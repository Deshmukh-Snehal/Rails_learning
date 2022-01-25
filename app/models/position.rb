class Position < ApplicationRecord
    validate :name_validation
    private def name_validation
      if  (name=="")
        self.errors[:base] <<"Please Enter Sports name"
      end
    end
    validate :equipments_validation
    private def equipments_validation
      if  (equipments=="")
        self.errors[:base] <<"Please Enter Equipments for sports"
      end
    end
    validate :player_validation
    private def player_validation
      if  (players=="")
        self.errors[:base] <<"Please Enter players"
      end
end
