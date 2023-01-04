class Ability < ApplicationRecord
    has_and_belongs_to_many :pokemon, join_table: :pokemon_abilities

    self.table_name = "abilities"
end