class ReviewsController < ApplicationController
#Create method will recover Rent_id from params and User from current_user to generate a new Review
  def create
    rent = Rent.find( params[:rent_id] )
    review = Review.new( rent: rent, user: current_user, eval: review_params[:eval], comment: review_params[:comment])
    review.save
    redirect_to rents_path
  end
end
