class PagesController < ApplicationController
  def home

    @all_category = Category.find_by_name("All")

  	@leadarticle = Article.find_by_lead(true)
 
  	@articles1 = Article.where("category_1_id = :business or category_1_id = :politics and not id = :lead_article_id", {business: 1, politics: 4, lead_article_id: @leadarticle.id}).order("created_at DESC").limit(12)
  	@articles2 = Article.where("category_1_id = :sports or category_1_id = :entertainment and not id = :lead_article_id", {sports: 3, entertainment: 2, lead_article_id: @leadarticle.id}).order("created_at DESC").limit(12)
    @articles3 = Article.where("category_1_id = :world or category_1_id = :culture and not id = :lead_article_id", {world: 5, culture: 6, lead_article_id: @leadarticle.id}).order("created_at DESC").limit(12)


    @articles_two_column_1 = Article.where("category_1_id = :business or category_1_id = :politics or category_1_id = :world and not id = :lead_article_id", {business: 1, politics: 4, world: 5, lead_article_id: @leadarticle.id}).order("created_at DESC").limit(12)
    @articles_two_column_2 = Article.where("category_1_id = :sports or category_1_id = :entertainment or category_1_id = :culture and not id = :lead_article_id", {sports: 3, entertainment: 2, culture: 6, lead_article_id: @leadarticle.id}).order("created_at DESC").limit(12)

  	# @columnists1 = Columnist.all.order("created_at DESC").limit(5).order("rating DESC")
  	# @columnists2 = Columnist.all.order("created_at DESC").limit(5).offset(5).order("rating DESC")
  	# @columinsts3 = Columnist.all.order("created_at DESC").limit(5).offset(10).order("rating DESC")

    @header_categories = Category.where("parent_category_id = :all_category_id", {all_category_id: @all_category.id})


  end

  def about
  end

  def category_home

    @category = Category.find_by_url(params[:category])

    @leadarticle = Article.find(@category.top_article_id)
 
    @articles = Article.where("category_1_id = :category_id and not id = :lead_article_id", {category_id: @category.id, lead_article_id: @leadarticle.id}).order("created_at DESC").limit(12)
    
    @all_category = Category.find_by_name("All")

    @header_categories = Category.where("parent_category_id = :all_category_id", {all_category_id: @all_category.id})


  end
  
end
