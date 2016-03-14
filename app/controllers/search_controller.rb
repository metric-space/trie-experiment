class SearchController < ApplicationController
  def search
    term = params[:term]
    result =  Dictionary.scan(term)
                        .shuffle
			.take(20)

    if result.empty?
      puts "mispelled"
      distance = 0
      lresult = []
      while (lresult.empty?)
        distance += 1
	lresult = Correct.query(term,distance)
      end
      lresult = lresult
                   .keys
		   .shuffle
		   .take(1)
      render json: {"mispelled" => lresult}
    else
      render json: {"complete" => result}      
    end
  end
end
