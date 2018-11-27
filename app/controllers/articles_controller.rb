class ArticlesController < ApplicationController
  # Creates the routes for a new article

  #  this is the index part that
  def index
    @articles = Article.all  # Return all fo the articles
  end
  #  The crudable get route for posting
  def new # this just registers the new route as a get route
  end


  # The post route for handling submission from the route above
  def create
    @article = Article.new(article_params)  # Takes the input from the form and

    if @article.save    # if the article can be save
      redirect_to @article    # Redicted to the article that was created
    else
      render 'new'  # Otherwise redirect to the new post page, this handles a failure
    end
  end



  #  the crudable show route
  def show
      @article = Article.find(params[:id])  # this goes into active record and finds a particular post by its ID
  end

  #  Update view route for the article
  def edit
    @article = Article.find(params[:id])
  end
  # update Post route for the update route
  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end



  private
    def article_params
      params.require(:article).permit(:title, :text)
    end

end
