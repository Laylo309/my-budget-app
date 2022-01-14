class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :manage, Activity, author_id: user.id
    can :manage, Category, user_id: user.id
  end
end
