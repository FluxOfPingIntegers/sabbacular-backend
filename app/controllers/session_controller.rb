class SessionController < ApplicationController
  def create
  end

  def google
  end

  def destroy
  end

  private
  def user_from_google
    user = User.find_or_create_by(email: request.env['omniauth.auth']["info"]["email"]) do |user|
      user.username = "#{request.env['omniauth.auth']["info"]["first_name"]}-#{SecureRandom.hex(3)}"
      user.name = request.env['omniauth.auth']["info"]["name"]
      user.email = request.env['omniauth.auth']["info"]["unverified_email"]
      user.password = "#{request.env['omniauth.auth']["info"]["unverified_email"]}#{SecureRandom.hex(3)}"
      #user.password = request.env['omniauth.auth']["info"]["unverified_email"]
      user.img = request.env['omniauth.auth']["info"]["image"]
      user.oauth = request.env['omniauth.auth']["uid"]
    end
  user.valid? ? session[:user_id] = user.id : user_from_google
  user
  end
end
