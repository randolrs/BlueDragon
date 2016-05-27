class PagesController < ApplicationController
  def home

    @all_category = Category.find_by_name("All")

  	@leadarticle = Article.find_by_lead(true)
 
  	@articles1 = Article.where("category_1_id = :business or category_1_id = :politics", {business: 1, politics: 4}).order("created_at DESC").limit(12)
  	@articles2 = Article.where("category_1_id = :sports or category_1_id = :entertainment", {sports: 3, entertainment: 2}).order("created_at DESC").limit(12)
    @articles3 = Article.where("category_1_id = :world or category_1_id = :culture", {world: 5, culture: 6}).order("created_at DESC").limit(12)

  	# @columnists1 = Columnist.all.order("created_at DESC").limit(5).order("rating DESC")
  	# @columnists2 = Columnist.all.order("created_at DESC").limit(5).offset(5).order("rating DESC")
  	# @columinsts3 = Columnist.all.order("created_at DESC").limit(5).offset(10).order("rating DESC")

    @header_categories = Category.where("parent_category_id = :all_category_id", {all_category_id: @all_category.id})


  end

  def about
  end

  def category_home

    @category = Category.find_by_url(params[:category])

    @leadarticle = Article.find_by_lead(true)
 
    @articles1 = Article.where("category = :business or category = :politics or category = :technology or category = :academia", {business: "Business", politics:"Politics", technology: "Technology", academia: "Academia"}).order("created_at DESC").limit(12)
    @articles2 = Article.where("category = :sports or category = :entertainment or category = :music or category = :art", {sports: "Sports", music:"Music", entertainment: "Entertainment", art: "Art & Design"}).order("created_at DESC").limit(12)
    @articles3 = Article.where("category = :literature or category = :fashion or category = :leisure", {literature: "Literature", fashion:"Fashion & Style", leisure: "Leisure",}).order("created_at DESC").limit(12)

    #@articles2 = Article.all.order("created_at DESC").limit(12).offset(12)
    @articles3 = Article.all.order("created_at DESC").limit(12).offset(24)

    @columnists1 = Columnist.all.order("created_at DESC").limit(5).order("rating DESC")
    @columnists2 = Columnist.all.order("created_at DESC").limit(5).offset(5).order("rating DESC")
    @columinsts3 = Columnist.all.order("created_at DESC").limit(5).offset(10).order("rating DESC")

    @all_category = Category.find_by_name("All")
    @header_categories = Category.where("parent_category_id = :all_category_id", {all_category_id: @all_category.id})


  end
  
end
