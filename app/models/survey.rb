class Survey < ActiveRecord::Base
  belongs_to :trip
  has_mnay :question
end
