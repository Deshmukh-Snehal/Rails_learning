class Player < ApplicationRecord
    belongs_to :sport
    has_many :achievementdetails
    has_many :appointmentinfos
    has_many :doctors, through: :appointmentinfos
    validates :age, numericality: { only_integer: true,  message: 'must in integer' }
end