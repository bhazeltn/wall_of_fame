module DynamicSelectable
  class LevelEventsController < SelectController
    def index
      events = Event.where(level_id: params[:level_id]).select('id, event_name').order('event_name asc')
      render json: events
    end
  end
end
