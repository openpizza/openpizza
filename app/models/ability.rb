class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    elsif user.shop_owner?
      # Shop
      can :create, Shop
      can :update, Shop do |s|
        s && s.owner == user
      end
      can :destroy, Shop do |s|
        s && s.owner == user
      end
      # ProductCategory
      can :create, ProductCategory do |c|
        c && c.shop.owner == user
      end
      can :update, ProductCategory do |c|
        c && c.shop.owner == user
      end
      can :destroy, ProductCategory do |c|
        c && c.shop.owner == user
      end
      # Product
      can :create, ProductCategory do |p|
        p && p.product_category.shop.owner == user
      end
      can :update, ProductCategory do |p|
        p && p.product_category.shop.owner == user
      end
      can :destroy, ProductCategory do |p|
        p && p.product_category.shop.owner == user
      end
    end
    can :read, Shop
    can :read, ProductCategory
    can :read, Product
  end
end
