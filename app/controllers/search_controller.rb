class SearchController < ApplicationController
  def search
    term = params[:term]
    result =  Dictionary[term[0]]
                        .scan(term)
                        .shuffle
			.take(20)

    if result.empty?
      puts "mispelled"
      distance = 0

      # select key from Correct randomly
      randomKey = Correct.keys.shuffle[0]
      lresult = []
      while (lresult.empty?)
        distance += 1
	lresult = Correct[randomKey].query(term,distance)
      end
      lresult = lresult
                   .keys
		   .shuffle
		   .take(1)
      render json: {"correct" => [], "wrong" => lresult}
    else
      render json: {"correct" => result, "wrong" => []}      
    end
  end
end
