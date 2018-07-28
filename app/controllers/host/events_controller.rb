class Host::EventsController < Host::ApplicationController
  permits :condition, :content, :description, :end_at, :image, :image_cache, :level, :name, :place, :remove_image, :start_at, :status

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
      redirect_to host_event_path(@event), notice: '作成しました'
    else
      render :new
    end
  end

  def update(event)
    @event = current_owner.events.find(params[:id])
    if @event.update(event)
      @event.users.each do |user|
        EventMailer.change(user, @event).deliver_now
      end
      redirect_to host_event_path(params[:id]), notice: '更新しました'
    else
      render :edit
    end
  end

end
