class HomeController < ApplicationController

  def index

  end

  def search
    session[:search_name] = params[:name]
    session[:search_category] = params[:category_id]

    @categories = Category.all

    offers = search_by_category(params[:category_id])
    @result = search_by_name(offers, params[:name])

  end

private

  def search_by_category(category_id)
    if category_id != nil && category_id != ""
      Offer.where(category_id: category_id)
    else
      Offer.all
    end
  end

  def search_by_name(offers, all_name)
    result = []

    if all_name == nil || offers == nil
      return offers
    end

    all_name = all_name.upcase
    name_array = all_name.upcase.split " "

    offers.each do |offer|
      if offer.name.upcase.include? all_name
        result << offer
      else
        name_array.each do |word|
          if offer.name.upcase.include?(word) && !result.include?(offer)
            result << offer
          end
        end
      end
    end
    result
  end

end
