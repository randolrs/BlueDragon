class PagesController < ApplicationController
  def home

    @all_category = Category.find_by_name("All")

  	@leadarticle = Article.find_by_lead(true)
 
  	@articles1 = Article.where("category_1_id = :business or category_1_id = :politics and not id = :lead_article_id", {business: 1, politics: 4, lead_article_id: @leadarticle.id}).order("created_at DESC").limit(12)
  	@articles2 = Article.where("category_1_id = :sports or category_1_id = :entertainment and not id = :lead_article_id", {sports: 3, entertainment: 2, lead_article_id: @leadarticle.id}).order("created_at DESC").limit(12)
    @articles3 = Article.where("category_1_id = :world or category_1_id = :culture and not id = :lead_article_id", {world: 5, culture: 6, lead_article_id: @leadarticle.id}).order("created_at DESC").limit(12)


    @articles_two_columns_1 = Article.where("category_1_id = :business or category_1_id = :politics or category_1_id = :world and not id = :lead_article_id", {business: 1, politics: 4, world: 5, lead_article_id: @leadarticle.id}).order("created_at DESC").limit(12)
    @articles_two_columns_2 = Article.where("category_1_id = :sports or category_1_id = :entertainment or category_1_id = :culture and not id = :lead_article_id", {sports: 3, entertainment: 2, culture: 6, lead_article_id: @leadarticle.id}).order("created_at DESC").limit(12)

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

    ###Standard, three column article collections

    @articles1 = Array.new
    @articles2 = Array.new 
    @articles3 = Array.new

    c = @articles.count
    
    i = 0

    @articles.each do |article|

      if i == 0

        @articles1 << article

        i = 1

      elsif i == 1

        @articles2 << article

        i = 2

      elsif i == 2

        @articles3 << article

        i = 0

      else

        #ruro
      end

    end  

###Flexible, two column article collections

    j = 0

    @articles_two_columns_1 = Array.new
    @articles_two_columns_2 = Array.new

    @articles.each do |article|

      if j == 0

        @articles_two_columns_1 << article

        j = 1

      elsif j == 1

        @articles_two_columns_2 << article

        j = 2

      else

        #ruro
      end

    end  

    @all_category = Category.find_by_name("All")

    @header_categories = Category.where("parent_category_id = :all_category_id", {all_category_id: @all_category.id})


  end
  
end
