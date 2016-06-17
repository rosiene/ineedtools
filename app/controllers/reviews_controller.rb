class ReviewsController < ApplicationController
#Create method will recover Rent_id from params and User from current_user to generate a new Review
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to reviews_path, notice: 'Review was successfully created.' }
        format.json { render :reviews, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end
#  def create

#    @review = Review.new(eval: review_params[:eval], comment: review_params[:comment])
#    @review.rent = rent_params
#    @review.user = current_user
#    rent = Rent.find( params[:rent_id] )
#    review.save
#    redirect_to reviews_path
#  end

  def index
    @reviews = Review.order(updated_at: :desc)
  end



private
  # Use callbacks to share common setup or constraints between actions:reviewf set_review
  def set_review
    @review = Review.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def review_params
    params.require(:review).permit(:eval, :comment, :rent_id)
  end
end
