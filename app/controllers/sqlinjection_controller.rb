class SqlinjectionController < ApplicationController

  def get_director_movies_compromised
    message = Movie.where("director_id = #{params[:director_id]}")
    begin
      message.each do |m| end
      flash[:notice] = message
      redirect_to sqlinjection_compromised_path
    rescue => exception
      flash[:error] = "Invalid SQL Statement"
      redirect_to sqlinjection_compromised_path
    end
  end

  def get_director_movies_safe
    message = Movie.where(["director_id = ?", "#{params[:director_id]}"])
    begin
      message.inspect
      flash[:notice] = message
      redirect_to sqlinjection_safe_path
    rescue => exception
      flash[:error] = "Invalid SQL Statement"
      redirect_to sqlinjection_safe_path
    end
  end

  def get_movies_genre_compromised
    message = Movie.where("genre = '#{params[:genre]}'")
    begin
      message.each do |m| end
      flash[:notice] = message
      redirect_to sqlinjection_compromised_path
    rescue => exception
      flash[:error] = "Invalid SQL Statement"
      redirect_to sqlinjection_compromised_path
    end
  end

  def get_movies_genre_safe
    message = Movie.where("genre = ?", "#{params[:genre]}")
    begin
      message.inspect
      flash[:notice] = message
      redirect_to sqlinjection_safe_path
    rescue => exception
      flash[:error] = "Invalid SQL Statement"
      redirect_to sqlinjection_safe_path
    end
  end
end
