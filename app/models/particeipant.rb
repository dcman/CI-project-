# == Schema Information
#
# Table name: particeipants
#
#  id         :integer         not null, primary key
#  email      :string(255)
#  trip_id    :integer
#  first_name :string(255)
#  last_name  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Particeipant < ActiveRecord::Base
  belongs_to :trip
  has_many   :answer
  
   email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :first_name,      :presence => true,
                        :length   => { :maximum => 25 }
  validates :last_name,      :presence => true,
                        :length   => { :maximum => 25 }
  validates :email,     :presence => true,
                        :format   => { :with => email_regex }
  validates :trip_id, :presence => true,
                        :numericality => {:only_integer => true}  
end
