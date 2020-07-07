class Ability
  include CanCan::Ability

  def initialize(user)
    if user.role?
      can :manage, User
    end
  end
end
