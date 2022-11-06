# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!([
    {
        :email                 => "ivica.ivic@gmail.com",
        :password              => "password",
        :password_confirmation => "password"
    },
    {
        :email                 => "marica.maric@gmail.com",
        :password              => "password",
        :password_confirmation => "password"
    },
    {
        :email                 => "jurica.juric@gmail.com",
        :password              => "password",
        :password_confirmation => "password"
    },
    {
        :email                 => "vjekoslav.vjekic@gmail.com",
        :password              => "password",
        :password_confirmation => "password"
    }
])

Account.create!([
    {
        :user_id => 1,
        :balance => 20000
    },
    {
        :user_id => 2,
        :balance => 0
    },
    {
        :user_id => 3,
        :balance => 7000
    },
    {
        :user_id => 4,
        :balance => 2500
    }
])

Transaction.create!([
    {
        :from_user_id => 1,
        :to_user_id => 2,
        :ammount => 2000
    },
    {
        :from_user_id => 2,
        :to_user_id => 4,
        :ammount => 1000
    },
    {
        :from_user_id => 3,
        :to_user_id => 1,
        :ammount => 500
    },
    {
        :from_user_id => 2,
        :to_user_id => 3,
        :ammount => 5000
    },
    {
        :from_user_id => 4,
        :to_user_id => 1,
        :ammount => 10000
    }
])

Director.create!([
    {
        :name => "Steven Spielberg"
    },
    {
        :name => "Martin Scorsese"
    },
    {
        :name => "Quentin Tarantino"
    },
    {
        :name => "Francis Ford Coppola"
    }
])

Movie.create!([
    {
        :name => "Schindler's List",
        :year => 1993,
        :length => 3.25,
        :genre => "Drama",
        :director_id => 1
    },
    {
        :name => "Saving Private Ryan",
        :year => 1998,
        :length => 2.82,
        :genre => "Action",
        :director_id => 1
    },
    {
        :name => "Jaws",
        :year => 1975,
        :length => 2.0,
        :genre => "Thriller",
        :director_id => 1
    },
    {
        :name => "Ready Player One",
        :year => 2018,
        :length => 2.3,
        :genre => "Sci-Fi",
        :director_id => 1
    },
    {
        :name => "Goodfellas",
        :year => 1990,
        :length => 2.4,
        :genre => "Drama",
        :director_id => 2
    },
    {
        :name => "The Wolf of Wall Street",
        :year => 2013,
        :length => 3,
        :genre => "Drama",
        :director_id => 2
    },
    {
        :name => "Shutter Island",
        :year => 2010,
        :length => 2.25,
        :genre => "Thriller",
        :director_id => 2
    },
    {
        :name => "Gangs of New York",
        :year => 2002,
        :length => 2.75,
        :genre => "Drama",
        :director_id => 2
    },
    {
        :name => "Pulp Fiction",
        :year => 1994,
        :length => 2.5,
        :genre => "Crime",
        :director_id => 3
    },
    {
        :name => "Jackie Brown",
        :year => 1997,
        :length => 2.5,
        :genre => "Crime",
        :director_id => 3
    },
    {
        :name => "The Hateful Eight",
        :year => 2015,
        :length => 2.75,
        :genre => "Drama",
        :director_id => 3
    },
    {
        :name => "Inglorious Basterds",
        :year => 2009,
        :length => 2.5,
        :genre => "Drama",
        :director_id => 3
    },
    {
        :name => "Apocalypse Now",
        :year => 1979,
        :length => 2.5,
        :genre => "War",
        :director_id => 4
    },
    {
        :name => "The Godfather",
        :year => 1972,
        :length => 3,
        :genre => "Crime",
        :director_id => 4
    },
    {
        :name => "The Godfather: Part II",
        :year => 1974,
        :length => 3.4,
        :genre => "Crime",
        :director_id => 4
    }
])