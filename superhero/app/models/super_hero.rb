class SuperHero < ApplicationRecord

    has_many :super_hero_powers
    has_many :powers, through: :super_hero_powers

    def add_power(name)
        power = Power.find_or_create_by(title: name)
        SuperHeroPower.create(hero_id: self.id, power_id: power.id)
    end 

end
