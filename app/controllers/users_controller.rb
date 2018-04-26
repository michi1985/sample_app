class UsersController < ApplicationController
  def new
    @user = User.new
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
