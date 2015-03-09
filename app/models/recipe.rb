class Recipe

  include HTTParty

  # Set default configurations
  base_uri 'http://www.recipepuppy.com'
  default_params onlyImages: "1"
  format :json

  # Method to get api information based on specified keyword
  def self.for(keyword)
     get("/api", query: {q: keyword})["results"] 
  end
end

#puts Recipe.for "chocolate"
#puts Recipe.for "apple pie"