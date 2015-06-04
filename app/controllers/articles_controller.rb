class ArticlesController < ApplicationController
  include ArticlesHelper
  before_action :article_setup, only: [:show, :edit, :update, :destroy]
  before_filter :require_login, except: [:index, :show]

  def index
    @articles = Article.all
  end

  def show
    @article.increment_view_count
    @comment = Comment.new
    @comment.article_id = @article.id
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new article_params
    if @article.save
      flash.notice = "Article '#{@article.title}' created!"
      redirect_to @article
    else
      raise "error"
    end
  end

  def destroy
    @article.destroy
    flash.notice = "Article '#{@article.title}' deleted!"
    redirect_to articles_path
  end

  def edit
  end

  def update
    if @article.update article_params
      flash.notice = "Article '#{@article.title}' updated!"
      redirect_to @article
    else
      raise "error"
    end
  end
end
