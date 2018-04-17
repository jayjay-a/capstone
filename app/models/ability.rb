class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
      if user.present? # users can create, read, update from all except lookup and user tables. cannot delete any
        can :create, :all
        can :read, :all
        can :update, :all
        cannot :create, [User, ProjectStatus, JobStatus, TaskStatus,
                         ProjectType, JobType, SubcontractorStatus,
                         CustomerStatus, EmployeeStatus, EmployeeType,
                         Employee, State ]
        cannot :read, [User, ProjectStatus, JobStatus, TaskStatus,
                       ProjectType, JobType, SubcontractorStatus,
                       CustomerStatus, EmployeeStatus, EmployeeType,
                       Employee, State]
        cannot :update, [User, ProjectStatus, JobStatus, TaskStatus,
                         ProjectType, JobType, SubcontractorStatus,
                         CustomerStatus, EmployeeStatus, EmployeeType,
                         Employee, State]
        can :show, User, id: user.id
        can :update, User, id: user.id
        if user.email.blank? # cheap way of finding out of they're logged in
          cannot :manage, :all
          can :index, :all #indexes redirect them to login page
        end
        if user.admin?
          can :manage, :all
          cannot :destroy, User, id: user.id
        end
      end
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
