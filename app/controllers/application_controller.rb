class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def set_skaters
    @skaters = Skater.order(last_name: :asc, first_name: :asc)
  end

  def set_competitions
    @competitions = Competition.order(:name)
  end

  def set_grouplevelevents
    @levels = Level.all
    @events = Event.all
    @groups = Group.all
  end
end
 
   
