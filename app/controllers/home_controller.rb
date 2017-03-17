class HomeController < ApplicationController
  def index
    @catmath=Catmath.all.order("created_at DESC").paginate(:page=>params[:page],:per_page=>5)
  end
end
