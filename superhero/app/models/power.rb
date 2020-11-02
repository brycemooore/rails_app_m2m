class Power < ApplicationRecord

    has_many :super_hero_powers
    has_many :super_heros, through: :super_hero_powers
end
