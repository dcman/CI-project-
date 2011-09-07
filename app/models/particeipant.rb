class Particeipant < ActiveRecord::Base
  belongs_to :trip
  has_many   :answer
end
