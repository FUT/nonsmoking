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
    @news_item.update_attributes params[:news_item]

    respond_with @news_item
  end

  def destroy
    @news_item.destroy
    redirect_to action: :index
  end

  def show
  end
end
