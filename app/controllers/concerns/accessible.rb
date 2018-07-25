module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected
  def check_user
    flash.clear
    if current_owner
      redirect_to(host_events_path) && return
    elsif current_user
      redirect_to(participant_events_path) && return
    end
  end
end
