module ArticlesHelper

  def article_setup
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body, :tag_list)
  end

end
