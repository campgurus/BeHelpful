class ProjectPolicy < ApplicationPolicy
  def destroy?
    user.admin?
  end
end