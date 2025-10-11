class SessionsController < ApplicationController
  before_action :authenticate_user!

  def create
    session = current_user.sessions.create(started_at: Time.current)
    redirect_to record_path(session)
  end

  def update
    session = current_user.sessions.find(params[:id])
    session.update(ended_at: Time.current)
    redirect_to records_path, notice: "セッション終了"
  end
end