# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :integer          not null
#  owner_id   :integer
#  user_id    :integer
#

class Comment < ApplicationRecord
end
