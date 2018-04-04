class NewsController < ApplicationController
  def index
    @news = News.all
  end
  
  def show
    @news = News.find(params[:id])
  end

  def new
    @news = News.new
  end

  def edit
    @news = News.find(params[:id])
  end

  def create
    @news = News.new(news_params)
    if @news.save
      redirect_to @news
    else
      render 'new'
  end

  private
    def news_params
      params.require(:news).permit(:name, :description, :created_at, :updated_at)
    end
end
