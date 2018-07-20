# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  condition   :string
#  content     :text
#  description :text
#  end_at      :datetime
#  image       :string
#  level       :integer
#  name        :string
#  place       :string
#  start_at    :datetime
#  status      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  owner_id    :integer
#

class Event < ApplicationRecord
  belongs_to :owner
end
