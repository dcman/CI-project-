class Survey < ActiveRecord::Base
  belongs_to :trip
  has_many :question
end
