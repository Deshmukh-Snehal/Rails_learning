# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  first_name             :string
#  last_name              :string
#  gender                 :string
#  phone                  :string
#  role                   :integer          default("user")
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  image                  :string
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

    # Associations
    has_many :songs

    # Enum role for users      
    enum role: [:user, :admin]

    # image uploading
    mount_uploader :image, ImageUploader
end
