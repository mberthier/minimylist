class ItemsController < ApplicationController

    def index
        @items = Item.all.where(user_id: current_user).reorder('category_id ASC')
    end

    def new
        @user = current_user
        @item = Item.new 
    end

    def create
        @user = current_user
        @item = Item.new(item_params)
        @item.user = @user
        if @item.save
            @item.save!
            redirect_to root_path
          else
            render "new"
          end
    end

    def edit
        @item = Item.find(params[:id])
    end

    def update
        @item = Item.find(params[:id])
        @item.update(item_params)
        redirect_to root_path
    end

    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        redirect_to root_path
    end

    def all_tops
      @items = Item.all.where(user_id: current_user)
      @items.joins(:category).where(category: { name: "Tops" })
    end

    def all_shirts
      @items = Item.all.where(user_id: current_user)
      @items.joins(:sub_category).where(sub_category: { name: "Shirts" })
    end
    
    private

    def item_params
      params.require(:item).permit(:category_id, :sub_category_id, :color, :fabric, :fit, :favorite, :photo)
    end
    
end
