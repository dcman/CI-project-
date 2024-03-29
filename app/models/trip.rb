# == Schema Information
#
# Table name: trips
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  date        :string(255)
#  description :text(255)
#  created_at  :datetime
#  updated_at  :datetime
#  sum         :string(255)
#

class Trip < ActiveRecord::Base
date_format = /^(0[1-9]|1[012])[- \/.](0[1-9]|[12][0-9]|3[01])[- \/.](19|20)\d\d$/


  has_one    :survey
  has_many   :question
  has_many   :particeipant
  has_many   :answer


validates :sum, :presence => true,
                         :length   => { :maximum => 10 }
validates :name,:presence => true,
                         :length   => { :maximum => 10 }
validates :description, :presence => true,
                         :length   => { :minimum => 10 }
validates :date,:presence => true,
                         :format   => { :with => date_format }
end
