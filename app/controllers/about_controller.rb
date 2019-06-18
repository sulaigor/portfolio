class AboutController < ApplicationController

  def index

  end

  def create
    article = AboutArticle.new
    article.article_name = params[:article_name]
    article.article_text = params[:article_text]
    article.date = params[:date]
    article.save!

    redirect_to about_me_path
  end

end
