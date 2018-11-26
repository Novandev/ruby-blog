class ArticlesController < ApplicationController
  # Creates the routes for a new article


  def index
    @articles = Article.all
  end


  def show
      @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :text))

    @article.save
    redirect_to @article
  end


end
