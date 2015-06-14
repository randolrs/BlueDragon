class Columnist < ActiveRecord::Base

	validates_format_of :url, :with => /\A#{URI::regexp(['http', 'https'])}\z/,
                    :message => "Please enter valid URL"
end
