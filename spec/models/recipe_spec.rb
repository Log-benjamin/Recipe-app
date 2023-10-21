require 'rails_helper'

# create some posts for testing using the 'user' as 'author'
def generate_test_ingredients(user)
  foods = []
  %i[1 2 3 4 5 6].each do |food_number|
    foods << Food.create(name: "Food #{food_number}", measurement_unit: "measure unit #{food_number}",
                         quantity: rand(8))
  end

  foods.each do |food|
    RecipeFood.create(recipe: user.recipes.last, food:)
  end

  RecipeFood.where(recipe: user.recipes.last)
end

# Start of the Specs for 'User' model
RSpec.describe Recipe, :models, type: :model do
  let!(:user) { User.create(name: 'Test User', email: 'test@me.com', password: 'test1234', confirmed_at: Time.now) }
  let!(:recipe) do
    described_class.new(name: 'Test Recipe', description: 'This is a recipe description', preparation_time: 0.5,
                        cooking_time: 1.5, user:)
  end

  # 'attr_mod' will allow you to test 'obj' with
  # the 'mod' attribute passed.
  def attr_mod(mod, obj: recipe)
    obj[mod.keys.first] = mod.values.first
    obj
  end

  before { recipe.save }

  describe ".new 'Recipe' is valid only:", :valid do
    it '- with valid attributes' do
      expect(recipe).to be_valid
      expect(attr_mod({ name: nil })).to_not be_valid
      expect(attr_mod({ description: nil })).to_not be_valid
      expect(attr_mod({ preparation_time: nil })).to_not be_valid
      expect(attr_mod({ cooking_time: nil })).to_not be_valid
      expect(attr_mod({ public: nil })).to_not be_valid
    end
  end

  describe '* attributes', :validations do
    describe '.name validations' do
      it '- must be provided' do
        expect(attr_mod({ name: nil })).to_not be_valid
      end

      it '- must be at least 3 characters' do
        expect(attr_mod({ name: 'a' * 2 })).to_not be_valid
      end

      it '- must be 150 characters max' do
        expect(attr_mod({ name: 'a' * 155 })).to_not be_valid
        expect(attr_mod({ name: 'a' * 105 })).to be_valid
      end

      it '- must contains only letters' do
        expect(attr_mod({ name: '1asda' })).to_not be_valid
        expect(attr_mod({ name: 'a new recipe' })).to be_valid
      end
    end

    describe '.description validations' do
      it '- must be provided' do
        expect(attr_mod({ description: nil })).to_not be_valid
      end
    end

    describe '.preparation_time validations' do
      it '- must be provided' do
        expect(attr_mod({ preparation_time: nil })).to_not be_valid
      end

      it '- must be a decimal number' do
        expect(attr_mod({ preparation_time: 'a' })).to_not be_valid
        expect(attr_mod({ preparation_time: [1.0] })).to_not be_valid
        expect(attr_mod({ preparation_time: 1.0 })).to be_valid
        expect(attr_mod({ preparation_time: 2 })).to be_valid
      end

      it '- must be greater to zero' do
        expect(attr_mod({ preparation_time: 0 })).to_not be_valid
        expect(attr_mod({ preparation_time: -1 })).to_not be_valid
        expect(attr_mod({ preparation_time: 0.1 })).to be_valid
        expect(attr_mod({ preparation_time: 2.3 })).to be_valid
      end
    end

    describe '.cooking_time validations' do
      it '- must be provided' do
        expect(attr_mod({ cooking_time: nil })).to_not be_valid
      end

      it '- must be a decimal number' do
        expect(attr_mod({ cooking_time: 'a' })).to_not be_valid
        expect(attr_mod({ cooking_time: [1.0] })).to_not be_valid
        expect(attr_mod({ cooking_time: 1.0 })).to be_valid
        expect(attr_mod({ cooking_time: 2 })).to be_valid
      end

      it '- must be greater to zero' do
        expect(attr_mod({ cooking_time: 0 })).to_not be_valid
        expect(attr_mod({ cooking_time: -1 })).to_not be_valid
        expect(attr_mod({ cooking_time: 0.1 })).to be_valid
        expect(attr_mod({ cooking_time: 2.3 })).to be_valid
      end
    end
  end

  describe '* methods', :methods do
    describe '#total_items' do
      context "- when a 'Recipe' is created" do
        it '> should return zero' do
          expect(recipe.total_items).to be_zero
        end
      end

      context "- when a 'Recipe' has ingredients" do
        it '> should return the number of ingredients' do
          ingredients = generate_test_ingredients(user)
          expect(recipe.recipe_foods.count).to eq(ingredients.count)
        end
      end
    end

    describe '#total_price' do
      context "- when a 'Recipe' is created" do
        it '> should return zero' do
          expect(recipe.total_price).to be_zero
        end
      end

      context "- when a 'Recipe' has ingredients" do
        it '> should return the total price' do
          ingredients = generate_test_ingredients(user)
          expect(recipe.total_price).to eq(ingredients.sum { |i| i.quantity * i.food.price })
        end
      end
    end

    describe '* associations', :associations do
      context '.user' do
        it "=> responds for the belongs to a 'user'" do
          association = described_class.reflect_on_association(:user)
          expect(association.macro).to eq(:belongs_to)
        end
      end

      context '.recipe_foods' do
        it "=> responds for the has many 'recipe_foods'" do
          association = described_class.reflect_on_association(:recipe_foods)
          expect(association.macro).to eq(:has_many)
        end
      end

      context '.foods' do
        it "=> responds for the has many 'foods' through 'recipe_foods'" do
          association = described_class.reflect_on_association(:foods)
          expect(association.macro).to eq(:has_many)
        end
      end
    end
  end
end
