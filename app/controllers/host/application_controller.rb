class Host::ApplicationController < ActionController::Base
  before_action :authenticate_owner!
end
