class SessionsController < ApplicationController
  before_action :authenticate_user!

  def create
    @session = current_user.sessions.create(started_at: Time.current)
    redirect_to root_path, notice: "セッションを開始しました"
  end

  def update
    @session = current_user.sessions.find(params[:id])
    @session.update(ended_at: Time.current)
    redirect_to root_path, notice: "セッションを終了しました"
  end
end
