class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(params[:comment].permit(:name, :comment))
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.fin(params[:id])
    @comment.destroy
  end

  
  private
    def comment_params
      params.require(:comment).permit(:name, :comment)
    end
end