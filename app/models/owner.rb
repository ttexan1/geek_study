# == Schema Information
#
# Table name: owners
#
#  id                     :integer          not null, primary key
#  comments               :text
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :string
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  job                    :string
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :string
#  name                   :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  sign_in_count          :integer          default(0), not null
#  thumbnail              :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_owners_on_email                 (email) UNIQUE
#  index_owners_on_reset_password_token  (reset_password_token) UNIQUE
#

class Owner < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end