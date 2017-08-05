class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  CLUB_NAME = "Calalta Skating Club"
end
