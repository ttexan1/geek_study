# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  condition   :string
#  content     :text             not null
#  description :text
#  end_at      :datetime         not null
#  image       :string
#  level       :integer
#  name        :string           not null
#  place       :string           not null
#  start_at    :datetime         not null
#  status      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  owner_id    :integer          not null
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
