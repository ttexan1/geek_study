# == Schema Information
#
# Table name: tickets
#
#  id         :integer          not null, primary key
#  comments   :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :integer
#  user_id    :integer
#

class Ticket < ApplicationRecord
end
