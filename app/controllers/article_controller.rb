class ArticleController < ApplicationController
	def new
		@article=Article.new
	end
	
	def create
	redirect_to root_url 
end
