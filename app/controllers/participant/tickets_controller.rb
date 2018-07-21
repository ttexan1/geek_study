class Participant::TicketsController < Participant::ApplicationController
  permits :event_id, :user_id, :comments
  def create
    ticket = current_user.tickets.build do |t|
      t.event_id = params[:event_id]
      t.comments = params[:ticket][:comments]
    end

    if ticket.save
      flash[:notice] = "このイベントに参加表明しました。"
      redirect_to participant_event_path(params[:event_id])
    else
      render json: {messages: ticket.errors.full_messages}, status: 422
    end
  end

  def destroy(event_id)
    ticket = current_user.tickets.find_by!(event_id: event_id)
    ticket.destroy!
    redirect_to participant_event_path(event_id), notice: 'このイベントの参加をキャンセルしました'
  end
end
