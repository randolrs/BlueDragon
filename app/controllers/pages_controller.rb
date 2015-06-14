class PagesController < ApplicationController
  def home

  	@leadarticle = Article.find_by_lead(true)
 
  	@articles1 = Article.all.order("created_at DESC").limit(12)
  	@articles2 = Article.all.order("created_at DESC").limit(12).offset(12)
  	@articles3 = Article.all.order("created_at DESC").limit(12).offset(24)

  	@columnists1 = Columnist.all.order("created_at DESC").limit(5).order("rating DESC")
  	@columnists2 = Columnist.all.order("created_at DESC").limit(5).offset(5).order("rating DESC")
  	@columinsts3 = Columnist.all.order("created_at DESC").limit(5).offset(10).order("rating DESC")


  end

  def about
  end
  
end
