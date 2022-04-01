class MenuItemsController < ApplicationController
    skip_before_action :authorized, only: [:show, :show_all, :deals]
    def show_all
        items = MenuItem.all
        render json: items.to_json
    end
    def show
        item = MenuItem.find_by(id: params[:id])
        render json: item.to_json
    end
    def deals
        items = MenuItem.where(food_type: "meal_deal")
        render json: items.to_json
    end

end
