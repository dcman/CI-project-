# == Schema Information
#
# Table name: questions
#
#  id         :integer         not null, primary key
#  question   :string(255)
#  survey_id  :integer
#  q_n        :integer
#  created_at :datetime
#  updated_at :datetime
#

class Question < ActiveRecord::Base
  belongs_to :survey
  belongs_to :trip
end
