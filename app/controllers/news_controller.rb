class NewsController < ApplicationController
  def index
    @news = News.order(:id).page(params[:page])
  end
  
  def show
    @new = News.find(params[:id])
  end

  def new
    @new = News.new
  end

  def edit
    @new = News.find(params[:id])
  end

  def update
    @new = News.find(params[:id])
    if @new.update(news_params)
      redirect_to @new
    else
      render 'edit'
    end
  end

  def create
    @news = News.new(news_params)
    if @news.save
      redirect_to @news
    else
      render 'new'
    end
  end

  def destroy
     @new = News.find(params[:id])
     @new.destroy
     redirect_to @new
   end

  private

  def news_params
    params.require(:news).permit(:title, :description, :created_at, :updated_at)
  end
end