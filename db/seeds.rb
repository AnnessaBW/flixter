# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(:name => 'John Doe', :email => 'john@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret')
course = Course.create(title: "Test course", description: "test description", cost: 0.0, user_id: user.id)
section = Section.create(title: "Test section 1", course_id: course.id)
section2 = Section.create(title: "Test section 2", course_id: course.id)
lesson = Lesson.create(title: "Test Lesson 1", subtitle: "Test Subtitle 1", section_id: section.id)
lesson2 = Lesson.create(title: "Test Lesson 2", subtitle: "Test Subtitle 2", section_id: section.id)
lesson3 = Lesson.create(title: "Test Lesson 3", subtitle: "Test Subtitle 3", section_id: section2.id)
lesson4 = Lesson.create(title: "Test Lesson 4", subtitle: "Test Subtitle 4", section_id: section2.id)