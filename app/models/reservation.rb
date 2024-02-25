class Reservation < ApplicationRecord
    belongs_to :user
    belongs_to :room


    validates :check_in ,presence:true
    validates :check_out ,presence:true
    validates :how_many_people ,presence:true
    

    def how_many_days
        (self.check_out - self.check_in).to_i
    end

    def total_price
        (how_many_people * how_many_days * room.price).to_i
    end
end

