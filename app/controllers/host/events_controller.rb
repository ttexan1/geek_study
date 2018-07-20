class Host::EventsController < Host::ApplicationController
  def new
    @event = Event.new
  end
  def create
    @event = Event.new(event_params)
    @event.owner_id = current_owner.id
    @event.save
    redirect_to host_events_path
  end
  def index
    @events = current_owner.events
  end
  private
  def event_params
    params.require(:event).permit(:name, :place, :image,
      :start_at, :end_at, :description, :content, :condition, :level, :status)
  end
end
