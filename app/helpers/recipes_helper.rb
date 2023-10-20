module RecipesHelper
  def confirm_toggle_public
    confirm_message = ["Do you want to #{@recipe.public ? 'remove' : 'add'} the Recipe"]
    confirm_message << ["#{@recipe.public ? 'from' : 'to'} the 'Public Recipes List'"]
    confirm_message.join(' ')
  end
end
