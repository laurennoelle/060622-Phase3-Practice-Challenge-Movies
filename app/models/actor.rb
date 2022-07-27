class Actor < ActiveRecord::Base
    has_many :roles
    has_many :movies, through: :roles

    # def total_salary
    #     Roles.sum
    # end

    # def blockbusters
    #     Movie.all(:box_office_earnings >= 50,000,000)
    # end
    
    # def most_successful
    #     Actor.find(:salary).order.last
    # end
end