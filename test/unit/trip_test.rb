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

require 'test_helper'

class TripTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
