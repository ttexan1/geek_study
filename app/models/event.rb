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

class Event < ApplicationRecord
  belongs_to :owner #これでnot nullのvalidationもかかる
  has_many :tickets
  has_many :users, through: :tickets

  validates :content, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :name, presence: true, length: { maximum: 50 }
  validates :place, presence: true, length: { maximum: 100 }
  validates :content, presence: true, length: { maximum: 2000 }
  validate :start_time_should_be_before_end_time


  def created_by?(user)
    return false unless user
    owner_id == user.id
  end

  private

  def start_time_should_be_before_end_time
    return unless start_at && end_at
    if start_at >= end_at
      errors.add(:start_at, 'は終了時間よりも前に設定してください')
    end
  end

end
