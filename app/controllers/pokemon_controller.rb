class PokemonController < ApplicationController
    
    def get_all
        pagy, pokemons = pagy(Pokemon.includes(:types).all)
        render json: pokemons
    end

    def get_by_id
        pokemon = Pokemon.find(params[:id])
        render json: pokemon
    end

    def search_by_name
        pokemons = Pokemon.where('identifier LIKE ?', "%#{params[:name]}%")
        render json: pokemons
    end

    def search_by_type
        pokemons = Pokemon.joins(:types).where(types: {"identifier": params[:type]})
        render json: pokemons
    end

end
