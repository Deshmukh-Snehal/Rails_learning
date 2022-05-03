# == Schema Information
#
# Table name: songs
#
#  id         :bigint           not null, primary key
#  name       :string
#  avtar      :string
#  users_id   :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class SongTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
