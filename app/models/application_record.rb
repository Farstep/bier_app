class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def over_20?
    session[:over20].nil?
    redirect_to users_verify_age_path, alert: "You have to verify age."
  end
end
