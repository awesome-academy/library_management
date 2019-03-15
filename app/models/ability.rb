class Ability
  include CanCan::Ability

  def initialize user
    user ||= User.new
    if user.admin?
      can :manage, :all
    else
      can :read, [User, Book]
      can :update, User, id: user.id
      can [:create, :read], [Review]
      can :destory, Review do |review|
        review.user == user
      end
    end
  end
end
