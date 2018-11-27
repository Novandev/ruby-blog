class ArticlesController < ApplicationController
  # Creates the routes for a new article

  #  this is the index part that
  def index
    @articles = Article.all  # Return all fo the articles
  end

  #  the crudable show route
  def show
      @article = Article.find(params[:id])  # this goes into active record and finds a particular post by its ID
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

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end

end
