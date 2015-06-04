class TagsController < ApplicationController
  before_filter :require_login, only: [:destroy]

  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
  end

  def destroy
    @tag = Tag.find(params[:id])
    if @tag.destroy
      flash.notice = "The tag #{@tag.name} was deleted!"
      redirect_to tags_path
    end
  end
end
