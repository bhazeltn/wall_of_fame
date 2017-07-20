module DynamicSelectable
  class GroupLevelsController < SelectController
    def index
      levels = Level.where(group_id: params[:group_id]).select('id, level').order('level asc')
      render json: levels
    end
  end
end
