class CommentsController < ApplicationController
  # C
  def create
    @article = Article.find(params[:article_id])    # Ties the comment to the article id found in the params
    @comment = @article.comments.create(comment_params) # Creates the comment as a nested resource of the articel itself
    redirect_to article_path(@article)    # redirects back to the same article page
  end


  # Destroy route for the comments
  def destroy
    @article = Article.find(params[:article_id])  # This finds the article by the params id
    @comment = @article.comments.find(params[:id])  # based on th article and the comment that is associated with it,
    @comment.destroy  # Delete it
    redirect_to article_path(@article)    # Redirect to the apge that it came from
  end


  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end

end
