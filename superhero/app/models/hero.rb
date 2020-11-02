class Hero < ApplicationRecord
    has_many :hero_powers
    has_many :powers, through: :hero_powers

    # def add_power(title)
    #     power = Power.find_by(title: title)
    #     HeroPower.create(hero_id: self.id, power_id: power.id)
    # end 
end
