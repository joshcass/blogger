class ArticlesController < ApplicationController
  before_action :article_setup, only: [:show, :new, :edit, :destroy]

  def index
    @articles = Articles.all
  end

  def show

  end

  private

  def article_setup
    @article = Article.find(params[:id])
  end
end
