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
class Song < ApplicationRecord
  # Associations
  belongs_to :user

  # image uploading
  mount_uploader :avatar, AvatarUploader
end