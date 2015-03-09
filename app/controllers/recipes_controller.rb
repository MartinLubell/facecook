class RecipesController < ApplicationController
  def index
    @keyword = params[:keyword] || 'chocolate'
    @recipe_list = Recipe.for @keyword
  end
end