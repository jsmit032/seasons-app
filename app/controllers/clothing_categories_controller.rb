class ClothingCategoriesController < ApplicationController
	def index
	end

	def create
		choices = []
		ClothingCategory.destroy_all
		params.keys.each do |k|
			if k[0..1] == "cb"
				choice = k[2..-1].split("_")
				choices << choice
				ClothingCategory.create(category_id: choice[0].to_i, clothing_id: choice[1].to_i)
			end
		end
		redirect_to clothing_categories_path
	end
end
