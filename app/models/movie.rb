class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles

    def cast_role(actor, character_name, salary)
        Role.create(actor: actor, character_name: character_name, salary: salary, movie: self)
    end

    def all_credits
        roles.map(&:credit)
    end

    def fire_actor(actor)
        Role.find_by(actor_id: actor.id, movie_id: self.id).destroy
    end
end