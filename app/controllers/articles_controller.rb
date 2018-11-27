class ArticlesController < ApplicationController
  # Creates the routes for a new article

  #  this is the index part that
  def index
    @articles = Article.all  # Return all fo the articles
  end


  #  The crudable get route for posting
  def new # this just registers the new route as a get route
    @article = Article.new  # This allows the resource to uses the error method from the model
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
    @article = Article.find(params[:id])  # Find the article by it's id

    if @article.update(article_params)    # Update the article with the article hash
      redirect_to @article                # If its successful redirect to this new edited article
    else
      render 'edit'                       # This renders the edit route if there are any errors
    end
  end

  # It is not necessary to pass all the attributes to update. For example, if @article.update(title: 'A new title') was called, Rails would only update the title attribute, leaving all other attributes untouched.


  #  Delete section for the articles section
  def destroy
    @article = Article.find(params[:id])  # Finds the article by its ID in the model
    @article.destroy  # Destroys said article

    redirect_to articles_path # redirect to ALL articles path/ index
  end




  private
    def article_params
      params.require(:article).permit(:title, :text)
    end

end
