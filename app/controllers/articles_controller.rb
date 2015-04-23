class ArticlesController < ApplicationController
  # load_and_authorize_resource
  # before_filter :authenticate_user! , :except => [:some_action_without_auth]
  def index
    @articles = Article.all

  end


  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = current_user.articles.new(article_params)

    @article.save
    redirect_to @article
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:caption, :lead, :pict)
    end
end
