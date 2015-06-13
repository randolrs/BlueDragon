class PagesController < ApplicationController
  def home
  	@leadarticle = Article.find_by_lead(true)
  	@articles = Article.all.order("created_at DESC").paginate(:page => params[:page], :per_page => 36)
  end

  def about
  end
  
end
