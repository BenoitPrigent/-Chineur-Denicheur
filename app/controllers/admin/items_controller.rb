module Admin
  class ItemsController < ApplicationController
    before_action :set_category, only: [:create]

    def create
      @item = Item.new(item_params)
      @item.category = @category

      if @item.save
        redirect_to admin_category_url(@category)
      else
        flash[:alert] = "Erreur"
        redirect_to admin_category_url(@category)
      end

    end

    def update
    end

    def destroy
    end

    private

    def item_params
      params.require(:item).permit(:name, :description, :category_id)
    end

    def set_category
        @category = Category.find(params[:category_id])
        #authorize @employee
      rescue ActiveRecord::RecordNotFound
        flash[:alert] = "Categorie introuvable."
        redirect_to root_url
    end

  end
end
