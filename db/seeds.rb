# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1 = User.create(username:"Danny")
u2 = User.create(username:"Bret")

q1 = Question.create(title:"testing", first_option:"345", second_option:"678", context:"this is some good context", submitted_user_id:u1.id)
q2 = Question.create(title:"quiz", first_option:"111", second_option:"222", context:"this is some bad context", submitted_user_id:u2.id)

uq1 = UserQuestion.create(user_id:u1.id, question_id:q1.id, choice: "1")
uq2 = UserQuestion.create(user_id:u2.id, question_id:q2.id, choice: "2")