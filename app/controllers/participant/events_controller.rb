class Participant::EventsController < Participant::ApplicationController
  permits :condition, :content, :description, :end_at, :image, :level, :name, :place, :start_at, :status
  def index(page=1)
    @events = Event.page(page).per(10).
        where('start_time > ?', Time.zone.now).order(:start_at)

    @q = Event.page(page).per(10).order(:start_at).search(search_params)
    @events = @q.result(distinct: true)
  end
  def show(id)
    @event = Event.find(id)
    @ticket = current_user && current_user.tickets.find_by(event_id: id)
  end

  private
  def search_params
    params.require(:q).premit!
  rescue
    {start_time_gteq: Time.zone.now}
  end
end
