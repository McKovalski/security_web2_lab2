class Movie < ApplicationRecord
    belongs_to :director

    def to_string
        "#{name}, #{year}, #{genre}"
    end
end
