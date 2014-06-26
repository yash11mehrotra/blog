class ArticlesController < ApplicationController
  def new
@article= Article.new
  end

  def index
  end

  def create
   #@article =Article.new
    #Article.create(article_params)
  
  #redirect_to 'articles_new_path'
  @article= Article.new(article_params)
  
         if  @article.save
          #redirect_to new_article_path
         redirect_to @article
          else 
          render 'new'
         #redirect_to root_path
      end


  end

  def edit
    @article= Article.find(params[:id])
  end

  
  def destroy
     @article= Article.find(params[:id])
     @article.destroy
     redirect_to root_path
  end

  def show
    @article = Article.find(params[:id])
    

  end

  def update
   @article = Article.find(params[:id])
   @article.update_attributes(article_params)
   redirect_to @article
 end
 def index
  @article= Article.find(:all)

 end
  private
    def article_params
      params.require(:article).permit(:title,:text)
    end


end
