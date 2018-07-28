class Host::ApplicationController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_owner!
  layout 'host'
end
