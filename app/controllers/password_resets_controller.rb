class PasswordResetsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(email: params[:email])
    if @user.present?
      PasswordMailer.with(user: @user).reset.deliver_now
    end

      redirect_to root_path, notice: "If that account was found with that email, we have sent a link to reset your password"
  end
end