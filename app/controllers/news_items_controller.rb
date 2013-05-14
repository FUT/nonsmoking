class NewsItemsController < ApplicationController
  load_resource

  def create
    if @news_item.save
      redirect_to news_item_path(@news_item)
    else
      render :new
    end
  end

  def update
  end

  def delete
  end

  def show
  end
end
