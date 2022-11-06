class HomeController < ApplicationController
  def index
    @users = User.all()
    @accounts = Account.all()
    @transactions = Transaction.all()
    @movies = Movie.all()
  end
end
