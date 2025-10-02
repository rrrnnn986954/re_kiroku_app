class ActionsController < ApplicationController
  before_action :authenticate_user!

  def create
    session = current_user.sessions.find(params[:session_id])
    action = session.actions.create(started_at: Time.current)
    redirect_to edit_action_path(action) # カテゴリー/メモ入力へ
  end

  def update
    action = Action.find(params[:id])
    action.update(action_params.merge(ended_at: Time.current))
    redirect_to record_path(action.session)
  end

  def edit
    @action = Action.find(params[:id])
  end

  private

  def action_params
    params.require(:action).permit(:category, :memo)
  end
end
