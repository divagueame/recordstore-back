# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(
    email: 'po@po.com',
    password_digest: BCrypt::Password.create('chikipo')
)
User.create!(
    email: 'po2@po.com', 
    password_digest: BCrypt::Password.create('chikipo')
)
User.create!(
    email: 'po3@po.com', 
    password_digest: BCrypt::Password.create('chikipo')
)

User.all.each do |user|
    3.times do |i|
       user.artists.create(name: "Artist #{i}")
    end
    user.artists.each do |artist, i|
        artist.records.create(title: "Anda ya#{i}", year: 1944, user_id: artist.user_id)
    end
end