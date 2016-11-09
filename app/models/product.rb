class Product < ApplicationRecord
  has_many :product_images, inverse_of: :product, dependent: :destroy
  accepts_nested_attributes_for :product_images, reject_if: :all_blank, allow_destroy: true
end
