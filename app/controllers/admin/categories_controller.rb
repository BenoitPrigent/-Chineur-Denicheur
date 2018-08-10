module Admin
  class CategoriesController < ApplicationController
    before_action :set_category, only: [:show]


    def show
      @item = Item.new

      @items = Item.where(category: @category)
      raise
    end


    def set_category
        @category = Category.find(params[:id])
        #authorize @employee
      rescue ActiveRecord::RecordNotFound
        flash[:alert] = "Categorie introuvable."
        redirect_to root_url
    end

  end
end
