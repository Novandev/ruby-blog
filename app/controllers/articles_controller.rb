class ArticlesController < ApplicationController
  # Creates the routes for a new article


  def index
    @articles = Article.all  # Return all fo the articles
  end


  def show
      @article = Article.find(params[:id])  # this goes into active record and finds a partoculat post by its ID
  end

  def new # this just registers the new route as a get route
  end

  def create
    @article = Article.new(article_params)  # Takes the input from the form and

    if @article.save    # if the article can be save
      redirect_to @article    # Redicted to the article that was created
    else
      render 'new'  # Otherwise redirect to the new post page, this handles a failure
    end
  end


end
