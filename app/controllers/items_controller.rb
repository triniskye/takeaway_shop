class ItemsController < ApplicationController
    def items
        items = MenuItem.all
        render json: items
    end
end
