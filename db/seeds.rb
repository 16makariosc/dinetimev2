# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

kceh = DiningHall.create(name: 'kceh')

potato = MenuItem.create(name: 'potato')

user = User.create(name: 'alfred')

potato_review = Review.create(text: 'pretty decent')
user.reviews << potato_review
potato.reviews << potato_review

kceh.menu_items << potato