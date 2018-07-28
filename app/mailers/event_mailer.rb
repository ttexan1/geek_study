class EventMailer < ApplicationMailer
  default from: "no-reply@techevents.com"
  def change(user, event)
    @user = user
    @event = event
    mail to: @user.email, subject: "参加予定イベントに変更がありました。"
  end
end
