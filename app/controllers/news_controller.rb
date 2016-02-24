class NewsController < ApplicationController
  def index
    @news = New.sorted
  end

  def detail
    @new = New.find(params[:id])
  end
end
