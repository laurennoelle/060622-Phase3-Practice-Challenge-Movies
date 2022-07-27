class Actor < ActiveRecord::Base
    has_many :roles
    has_many :movies, through: :roles

    def total_salary
        roles.sum(:salary)
    end

    def blockbusters
        # movies.where("box_office_earnings > 50000000")
        movies.filter {|movie| movie.box_office_earnings > 50000000}
    end
    
    def self.most_successful
        self.all.order(salary: :desc).first
        #Actor.first
    end
end