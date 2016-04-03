class TagsController < ApplicationController

  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
  end

  def destroy
    @article = Tag.find(params[:id])
    @article.destroy
    flash.notice = "Tag '#{@article.name}' Removed!"
    redirect_to tags_path
  end

end
