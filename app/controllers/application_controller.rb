class ApplicationController < ActionController::Base
  def over_20?
    if session[:over20].nil?
      session[:original_path] = request.fullpath
      redirect_to users_verify_age_path, alert: "You have to verify age."
    end
  end
end
