class Participant::ApplicationController < ActionController::Base
  before_action :authenticate_user!
  layout 'participant'
end
