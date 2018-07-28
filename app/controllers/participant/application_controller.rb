class Participant::ApplicationController < ApplicationController
  before_action :authenticate_user!
  layout 'participant'
end
