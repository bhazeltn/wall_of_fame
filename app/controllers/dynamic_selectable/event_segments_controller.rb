module DynamicSelectable
  class EventSegmentsController < SelectController
    def index
      segments = Segment.where(event_id: params[:event_id]).select('id, name').order('id asc')
      render json: segments
    end
  end
end
