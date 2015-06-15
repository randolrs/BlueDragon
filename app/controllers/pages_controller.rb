class PagesController < ApplicationController
  def home

  	@leadarticle = Article.find_by_lead(true)
 
  	@articles1 = Article.where("category = :business or category = :politics or category = :technology or category = :academia", {business: "Business", politics:"Politics", technology: "Technology", academia: "Academia"}).order("created_at DESC").limit(12)
  	@articles2 = Article.where("category = :sports or category = :entertainment or category = :music or category = :art", {sports: "Sports", music:"Music", entertainment: "Entertainment", art: "Art"}).order("created_at DESC").limit(12)
    @articles3 = Article.where("category = :literature or category = :fashion or category = :leisure", {literature: "Literature", fashion:"Fashion & Style", leisure: "Leisure",}).order("created_at DESC").limit(12)

    #@articles2 = Article.all.order("created_at DESC").limit(12).offset(12)
  	@articles3 = Article.all.order("created_at DESC").limit(12).offset(24)

  	@columnists1 = Columnist.all.order("created_at DESC").limit(5).order("rating DESC")
  	@columnists2 = Columnist.all.order("created_at DESC").limit(5).offset(5).order("rating DESC")
  	@columinsts3 = Columnist.all.order("created_at DESC").limit(5).offset(10).order("rating DESC")


  end

  def about
  end
  
end
