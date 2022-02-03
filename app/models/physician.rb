class Physician < ApplicationRecord
    has_many :appointments
    has_many :players, through: :appointments
end