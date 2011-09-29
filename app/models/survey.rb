# == Schema Information
#
# Table name: surveys
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  trip_id    :integer
#  date       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Survey < ActiveRecord::Base
  belongs_to :trip
  has_many :question
  has_many :particeipant
end
