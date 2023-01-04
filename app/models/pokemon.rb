class Pokemon < ApplicationRecord
    has_and_belongs_to_many :types

    has_and_belongs_to_many :abilities, join_table: :pokemon_abilities

    self.table_name = "pokemon"
end