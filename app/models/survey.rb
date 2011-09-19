class Survey < ActiveRecord::Base
  belongs_to :trip
  has_many :question
  has_many :particeipant
end
