class LevelsController < ApplicationController

  def index
    render status: :ok, json: { levels: Level.all }
  end

  def show
    level_id = params[:level_id]
    return render status: :bad_request, json: { error: "No level ID specified in request" } unless level_id

    # Check level existence
    begin
      level = Level.find(level_id)
    rescue StandardError => e
      return render status: :unprocessable_entity, json: { error: "ID does not match any existing level" }
    end

    render status: :ok, json: { level: level.configure_for_user }
  end

end
