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

  def create
    @user = User.new(user_params)
    if @user.save
     # 保存が成功した場合の処理
    else
      render "new"
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
