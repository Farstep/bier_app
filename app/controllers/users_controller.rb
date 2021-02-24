class UsersController < ApplicationController
  before_action :over_20?, except: [:verify_age, :verified]
  def show
  end

  def verify_age
    unless session[:over20].nil?
      redirect_to homes_top_path
    end
    if session[:original_path].nil?
      session[:original_path] = request.fullpath
    end
  end

  def verified
    session[:over20] = { value: "yes", expires: 1.years.since }
    byebug
    redirect_to (session[:original_path] == "/users/verify_age") ? homes_top_path : session[:original_path]
  end
end
