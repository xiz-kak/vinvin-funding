class ApplyController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
  end

  def basic
  end

  def contents
  end

  def rewards
  end

  def contact
  end

  def preview
  end

  def complete
  end
end
