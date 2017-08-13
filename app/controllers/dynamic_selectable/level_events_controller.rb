module DynamicSelectable
  class LevelEventsController < SelectController
    def index
      events = Event.where(level_id: params[:level_id]).select('id, name')
      render json: events
    end
  end
end
