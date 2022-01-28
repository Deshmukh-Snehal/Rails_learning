class Doctor < ApplicationRecord
    has_many :appointmentinfos
  has_many :players, through: :appointmentinfos
end
