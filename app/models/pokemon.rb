class Pokemon < ApplicationRecord
    has_many :pokemon_types
    has_many :types, through: :pokemon_types

    has_many :pokemon_abilities
    has_many :abilities, through: :pokemon_abilities

    self.table_name = "pokemon"
end