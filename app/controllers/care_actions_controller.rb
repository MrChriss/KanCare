class CareActionsController < ApplicationController
  before_action :find_care_action, only: %i(show destroy)

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

  def show; end

  def destroy
    if current_user == @care_action.user
      @care_action.destroy
      flash.notice = "successfully deleted."
    else
      flash.notice = "You cannot delete this event."
    end

    redirect_to care_actions_path
  end

  private

  def care_action_params
    params.require(:care_action).permit(:id, :user_id, :category)
  end

  def find_care_action
    @care_action = CareAction.find(params[:id])
  end
end
