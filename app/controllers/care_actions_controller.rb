class CareActionsController < ApplicationController
  def index
    @care_actions = CareAction.all
  end

  def new
    @care_action = CareAction.new
  end

  def create
    category = care_action_params[:category]

    @care_action = CareAction.new(
      user_id: current_user.id,
      category: category
    )

    if @care_action.save
      flash.notice = "#{category} successfully added."
    else
      flash.error = "#{category}, was not added."
    end

    redirect_to care_actions_path
  end

  private

  def care_action_params
    params.require(:care_action).permit(:user_id, :category)
  end
end
