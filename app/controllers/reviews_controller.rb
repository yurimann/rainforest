class ReviewsController < ApplicationController
  before_action :ensure_logged_in, only: [:create, :destroy]
  before_action :load_product

  def show
    @review = Review.find(params[:id])
    if current_user
      @review = @product.reviews.build
    end
  end

  def create
    @review = @product.reviews.build(review_params)
    @review.user = current_user

    if @review.save
      redirect_to products_url, notice: 'Review created successfully'
    else
      render 'products/show'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private
  def review_params
    params.require(:review).permit(:comment, :product_id)
  end

  def load_product
    @product = Product.find(params[:product_id])
  end

end
