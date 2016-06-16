class HomeController < ApplicationController

  def index

  end

  def search
    if params[:value] != nil
      session[:search_value] = params[:value]
    end
    value = session[:search_value]
    @result = []

    offers = Offer.all

    all_search = value.upcase
    @word_search = value.upcase.split " "

    offers.each do |offer|
      if offer.name.upcase.include? all_search
        @result << offer
      else
        @word_search.each do |word|
          if offer.name.upcase.include?(word) && !@result.include?(offer)
            @result << offer
          end
        end
      end
    end

  end

end
