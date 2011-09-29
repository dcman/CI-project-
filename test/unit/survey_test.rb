# == Schema Information
#
# Table name: surveys
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  trip_id    :integer
#  date       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class SurveyTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
