class RecordsController < ApplicationController
  before_action :authenticate_user!

  def index
    @current_session = current_user.sessions.find_by(ended_at: nil)
  end
end
