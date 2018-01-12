class ArticlesController < ApplicationController
  before_action :set_title

  def index
    @articles = Article.order("created_at desc").page(params[:page]).per(6)
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      flash[:notice] = 'Article was successfully created.'
      redirect_to @article
    else
      render 'new'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end

  def set_title
    @page_title = "Blog | Articles"
  end
end
