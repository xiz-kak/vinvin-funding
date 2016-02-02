class MembersController < ApplicationController
  def index
  end

  def favorite
    render 'index'
  end

  def supported
    render 'index'
  end

  def posted
    render 'index'
  end
end
