class SearchController < ApplicationController
  def search
    term = params[:term]+"*"*20
    render json: Dictionary.wildcard(term).shuffle.take(20)
  end
end
