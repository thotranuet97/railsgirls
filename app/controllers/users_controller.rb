class UsersController < ApplicationController
  def index
     @users = User.all
  end
  def show
    @user = User.find_by_id(params[:id])
  end
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to root_path, notice: 'Profile was successfully updated.'
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:user_name, :telephone)
  end
end