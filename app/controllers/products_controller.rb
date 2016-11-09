class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to  product_path(@product.id)
    else
      render 'new'
    end
  end

  def show
    @product = Product.find_by(id: params[:id])
  end
  
  def filter
    @images = ProductImage.where(product_id: params[:image][:product_id])
  end
  
  private
  def product_params
    params.require(:product).permit(:name, product_images_attributes: [:id, :image, :_destroy])
  end
end
