class ProductsController < ApplicationController
	before_action :authenticate_user!, except: [:index]
	
	def index
		@items = Item.all
		@count = Item.count
	end

	def show
		@item = Item.find(params[:id])
	end

	def new
		@item = Item.new
	end

	def create
		@item = Item.new item_params
		@item.user = 
		if @item.save
			redirect_to product_path(@item)
		else
			render 'new'
		end
	end

	private

	def item_params
		params.require(:item).permit(:name, :category, :description, :tags, :availability, :availability_count, :price)
	end

end
