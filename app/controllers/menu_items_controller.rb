class MenuItemsController < ApplicationController
    skip_before_action :authorized, only: [:show, :show_all]
    def show_all
        items = MenuItem.all
        render json: items.to_json
    end
    def show
        item = MenuItem.find(params[:id])
        render json: item.to_json
    end
end
