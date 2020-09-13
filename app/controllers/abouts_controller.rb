class AboutsController < ApplicationController

  def index
    @about_articles = About.all
    @article = About.new
  end

  def create
    @article = About.create!(article_params)
  end

  private

  def article_params
    params.permit(:article_name, :article_text, :date)
  end

end
