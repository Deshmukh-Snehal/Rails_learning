class Player < ApplicationRecord
    belongs_to :sport
    has_many :achievement
    validates :age, numericality: { only_integer: true,  message: 'must in integer' }
end