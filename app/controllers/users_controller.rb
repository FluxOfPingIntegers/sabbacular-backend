class UsersController < ApplicationController

  def create
    user = User.new(user_params)
    if user.save
      render json: {user: user, token: encode_token(user.id), vendor: (!!user.vendor ? user.vendor.display : false)}
    else
      render json: {errors: "Invalid Username and/or Password"}, status: :unprocessable_entity
    end
  end

  def update
    byebug
  end

  def destroy
    byebug
  end

  private

  def user_params
    byebug
  end
end
