class Ability
  include CanCan::Ability

  def initialize(current_user)
    user = current_user || User.new

    can :read, Recipe, user_id: user.id
    can :update, Recipe, user_id: user.id
    can :destroy, Recipe, user_id: user.id
  end
end
