# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@user = User.create!(name: 'Danil', 
										email: 'danil@mail.ru', 
										password: 'qweqwe',
										password_confirmation: 'qweqwe',
										status: true)
@admin = User.create!(name: 'Admin', 
										email: 'admin@mail.ru', 
										password: 'qweqwe',
										password_confirmation: 'qweqwe',
										admin: true,
										status: true)

30.times do
	@author = Author.create!(name: Faker::Book.author)
	@category = Category.create!(title: Faker::Book.genre,
															description: Faker::Lorem.sentence(10))
	@book = Book.create!(title: Faker::Book.title,
											description: Faker::Lorem.sentence(10),
											user: @user,
											status: true,
											agreement: true)
	@book.categories << @category
	@book.authors << @author
end