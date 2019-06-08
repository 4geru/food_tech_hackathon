class UsersController < ApplicationController
  def show
    @user = User.find_by(params.permit(:id))
    render 'show', formats: 'json'
  end
end
