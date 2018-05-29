class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    else
      can :manage, User, id: user.id
      can :read, :all
    end
  end
  # for this to work, you must add load_and_authorize_resource at the top of the relevant controller

end
