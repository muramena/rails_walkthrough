class PokemonSerializer < ActiveModel::Serializer
    attributes :id, :identifier, :height, :weight

    has_many :types
end