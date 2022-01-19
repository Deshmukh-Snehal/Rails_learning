class Doctor < ApplicationRecord
    validates :name, :contact_no, :degree, :email, :joiningdate,  presence: true
    validates :contact_no, length: { is: 10 }
    validates :email, uniqueness: true
end
