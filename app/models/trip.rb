class Trip < ActiveRecord::Base
  has_one    :survey
    has_many :question, :through => :survey 
  has_many   :particeipant
    has_many :answer, :through => :particeipant
end
