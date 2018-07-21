# == Schema Information
#
# Table name: tickets
#
#  id         :integer          not null, primary key
#  comments   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :integer          not null
#  user_id    :integer          not null
#

class Ticket < ApplicationRecord
  belongs_to :event
  belongs_to :user
end
