require 'rails_helper'

# Start of the Specs for 'User' model
RSpec.describe User, :models, type: :model do
  let!(:user) do
    described_class.new(name: 'Test User', email: 'test@me.com', password: 'test1234', confirmed_at: Time.now)
  end

  # 'attr_mod' will allow you to test 'obj' with
  # the 'mod' attribute passed.
  def attr_mod(mod, obj: user)
    obj[mod.keys.first] = mod.values.first
    obj
  end

  before { user.save }

  describe ".new 'User' is valid only:", :valid do
    it '- with valid attributes' do
      expect(user).to be_valid
      expect(attr_mod({ name: nil })).to_not be_valid
      expect(attr_mod({ email: nil })).to_not be_valid
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

      it '- must be 50 characters max' do
        expect(attr_mod({ name: 'a' * 66 })).to_not be_valid
      end

      it '- must contains only letters' do
        expect(attr_mod({ name: '1asda' })).to_not be_valid
        expect(attr_mod({ name: 'username' })).to be_valid
      end
    end
  end

  describe '* associations', :associations do
    context '.recipes' do
      it "=> responds for the has many 'recipes'" do
        association = described_class.reflect_on_association(:recipes)
        expect(association.macro).to eq(:has_many)
      end
    end

    context '.foods' do
      it "=> responds for the has many 'foods'" do
        association = described_class.reflect_on_association(:foods)
        expect(association.macro).to eq(:has_many)
      end
    end
  end
end
