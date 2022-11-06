class CsrfCompromisedController < ApplicationController

  TransactionWrapper = Struct.new(:from_user_email, :to_user_email, :ammount, :created_at)

  def index
    if user_signed_in?
      @account = Account.where(:user_id => current_user.id).find { |a| a.id = current_user.id }
      transactions_sent = Transaction.order('created_at DESC').where(:from_user_id => current_user.id).select { |t| t.from_user_id = current_user.id }
      transactions_received = Transaction.order('created_at DESC').where(:to_user_id => current_user.id).select { |t| t.to_user_id = current_user.id }
      @transactions_sent_wrapper = []
      @transactions_received_wrapper = []
      transactions_sent.each do |t|
        user_from = User.find_by_id(t.from_user_id)
        unless user_from.nil?
          user_from_email = user_from.email
        else
          user_from_email = "Unknown user"
        end
        user_to = User.find_by_id(t.to_user_id)
        unless user_to.nil?
          user_to_email = user_to.email
        else
          user_to_email = "Unknown user"
        end
        wrapper = TransactionWrapper.new(user_from_email, user_to_email, t.ammount, t.created_at)
        @transactions_sent_wrapper.push(wrapper)
      end
      transactions_received.each do |t|
        user_from = User.find_by_id(t.from_user_id)
        unless user_from.nil?
          user_from_email = user_from.email
        else
          user_from_email = "Unknown user"
        end
        user_to = User.find_by_id(t.to_user_id)
        unless user_to.nil?
          user_to_email = user_to.email
        else
          user_to_email = "Unknown user"
        end
        wrapper = TransactionWrapper.new(user_from_email, user_to_email, t.ammount, t.created_at)
        @transactions_received_wrapper.push(wrapper)
      end
    end
  end

  def transfer_funds
    ammount = params[:ammount].to_f
    from_user_account = Account.find_by(:user_id => current_user.id)
    to_user = User.find_by_id(params[:to_user_id])
    to_user_account = Account.find_by(:user_id => to_user.id)

    from_user_account.update(:balance => from_user_account.balance - ammount)
    to_user_account.update(:balance => to_user_account.balance + ammount)

    transaction = Transaction.new
    transaction.from_user_id = current_user.id
    transaction.to_user_id = to_user.id
    transaction.ammount = ammount
    transaction.save

    redirect_to request.referrer
  end

  def reset_data
    ActiveRecord::Base.connection.tables.each do |t|
      conn = ActiveRecord::Base.connection
      conn.execute("TRUNCATE TABLE #{t} CASCADE;")
      conn.reset_pk_sequence!(t)
    end

    Rails.application.load_seed
    redirect_to user_session_path
  end
end
