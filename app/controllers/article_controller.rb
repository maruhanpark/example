class ArticleController < ApplicationController
	def getSelectedArticles(name:)
		#logger.debug "===== #{Article.where(name: name)}"
		return Article.where(name: name)
	end

	#Returns the index of the finally selected article
	def randomWeight(articles:)
		sum = 0
	    articles.each { |a| sum += a.weight }
	    randNum = rand(sum)
	    returnIndex = 0
	    for i in 0 ... articles.size
	    	randNum -= articles[i].weight
	    	if (randNum < 0)
	    		returnIndex = i
	    		break
	    	end
	    end
	    return returnIndex
	end

	def article
		if params[:name]
			selectedArticles = getSelectedArticles(name: params[:name])
			finalArticle = selectedArticles[randomWeight(articles: selectedArticles)]
			render json: finalArticle, status: :ok
		else
	    	render json: {message: "Bad parameters"}, status: :bad_request
	    end
	end


end
