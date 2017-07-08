# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@profile = Profile.create!(name: 'Danil',
													 email: 'danil@mail.ru',
													 password: 'qweqwe',
													 password_confirmation: 'qweqwe')
@admin = Profile.create!(name: 'Admin', email: 'admin@mail.ru',
												 password: 'qweqwe',
												 password_confirmation: 'qweqwe',
												 admin: true,
												 status: true)
20.times do
		rand(1..4).times do
			@category = Category.create!(title: Faker::Book.genre)
			@author = Author.create!(name: Faker::Book.author)
			@book = Book.create!(title: Faker::Book.title,
													 description: Faker::Lorem.sentence(13),
													 status: true, agreement: true,
													 categories: [Category.last],
													 authors: [Author.last],
													 profile: @profile )
		end
end