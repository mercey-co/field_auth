class Avo::ContactPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    true
  end

  def edit?
    true
  end

  def update?
    true
  end

  def show_parents?
    record.age.present? && record.age < 18
  end
end
