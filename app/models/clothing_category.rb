class ClothingCategory < ActiveRecord::Base
  belongs_to :clothing
  belongs_to :category
end
