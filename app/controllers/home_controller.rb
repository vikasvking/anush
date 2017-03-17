class HomeController < ApplicationController
  def index
    @catmath=Catmath.all.order("created_at DESC").paginate(:page=>params[:page],:per_page=>5)
    @sum,@right=0,0
    @catmath.each do |i|
      @sum+=i.question
      @right+=i.right
    end
  end
end
