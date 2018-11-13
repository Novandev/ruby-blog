class ArticlesController < ApplicationController
  # Crestes the routes for a new article
  #

  def index
    @articles = Article.all
  end


  def show
      @article = Article.find(params[:id])
  end

  def new
  end

  def create
    render plain: params[:article].inspect
  end
end
