class UsersController < ApplicationController
  def new
  end

  def show
    @user = User.find_by(id: params[:id])
    p "==================="
    p @user
    p "==================="
  end

  def edit
  end

end
