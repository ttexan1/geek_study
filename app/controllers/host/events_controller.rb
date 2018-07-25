class Host::EventsController < Host::ApplicationController
  permits :condition, :content, :description, :end_at, :image, :level, :name, :place, :start_at, :status

  def index(page=1)
    @events = current_owner.events.page(page).per(10).order(:start_at)
  end

  def show(id)
    @event = Event.find(id)
  end

  def new
    @event = Event.new
  end

  def edit(id)
    @event = current_owner.events.find(id)
  end

  def create(event)
    @event = Event.new(event)
    @event.owner_id = current_owner.id
    if @event.save
      redirect_to host_events_path, notice: '作成しました'
    else
      render :new
    end
  end

  def update(id, event)
    @event = current_owner.events.find(id)
    if @event.update(event)
      redirect_to host_event_path(id), notice: '更新しました'
    else
      render :edit
    end
  end

end
