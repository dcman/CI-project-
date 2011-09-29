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

require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
