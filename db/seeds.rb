# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  # cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
  #  Mayor.create(name: 'Emanuel', city: cities.first)
    User.create(email: 'user@sg.com', password: '111111')
    Category.create(title: 'Category_1')

50.times do
  Post.create(
          title: Faker::Book.title,
          description: Faker::Hipster.sentence(3),
          user_id: 1,
          category_id: 1

  )

end