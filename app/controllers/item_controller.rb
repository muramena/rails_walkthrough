class ItemController < ApplicationController

    # Listado de todos, dividido en categorias?

    def search_by_category
        items = Item.joins(:category).where(category: {"identifier": params[:category]})
        render json: items
    end

    def search_by_name
        items = Item.where('identifier LIKE ?', "%#{params[:name]}%")
        render json: items
    end

end