# == Schema Information
#
# Table name: answers
#
#  id              :integer         not null, primary key
#  answer          :string(255)
#  particeipant_id :integer
#  q_n_id          :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class Answer < ActiveRecord::Base
belongs_to :particeipantS
end
