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

require 'test_helper'

class ParticeipantTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
