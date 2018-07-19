# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  owner_id   :integer
#  user_id    :integer
#

class Message < ApplicationRecord
end
