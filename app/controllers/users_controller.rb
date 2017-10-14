class UsersController < ApplicationController
  before_action :find_user

  def edit
  end

  def update
    @user.update(user_params)

    redirect_to new_care_action_path
  end

  private
    def user_params
      params.require(:user).permit(:avatar, :nick_name)
    end

    def find_user
      @user = current_user
    end
end
