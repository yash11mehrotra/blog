class CommentsController < ApplicationController
  def index
  end

  def create
   @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    #redirect_to article_path(@article)
    redirect_to @article
  end

  def show
    
  end

  def edit
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
  end

  def update
     @article = Article.find(params[:article_id])
    @comment= @article.comments.find(params[:id])
    @comment.update_attributes(comment_params)
    redirect_to @article
  end
  def destroy
    @article= Article.find(params[:article_id])
    @comment= @article.comments.find(params[:id])
    @comment.destroy
    redirect_to @article
  end

  def new
    
  end
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
