class PokemonAbility < ApplicationRecord
    belongs_to :pokemon
    belongs_to :ability

    self.table_name = "pokemon_abilities"
end