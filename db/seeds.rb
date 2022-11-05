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