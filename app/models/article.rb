class Article < ActiveRecord::Base

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "50x50>", :default_url => "images/missing.png" }
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
	
	validates_format_of :url, :with => /\A#{URI::regexp(['http', 'https'])}\z/,
                    :message => "Please enter valid URL"

                    #need to add validator if lead story, headline cannot exceed 35 characters

end
