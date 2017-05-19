class Ability
  include CanCan::Ability

  def initialize(user)
    if user.admin?
      can :manage, :all
    else
      can :read, :all
      can :buy_ticket, User
      can :remove_ticket, User
    end
  end
end
