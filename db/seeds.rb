# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u1 = User.create(username:"Danny")
u2 = User.create(username:"Bret")

q1 = Question.create(title:"first question", first_option:"111", second_option:"222", context:"First question context.", submitted_user_id:u1.id)
q2 = Question.create(title:"second question", first_option:"333", second_option:"444", context:"Second question context.", submitted_user_id:u2.id)
q3 = Question.create(title:"third question", first_option:"555", second_option:"666", context:"Third question context.", submitted_user_id:u1.id)
q4 = Question.create(title:"fourth question", first_option:"777", second_option:"888", context:"Fourth question context.", submitted_user_id:u2.id)

uq1 = UserQuestion.create(user_id:u1.id, question_id:q1.id, choice: "111")
uq2 = UserQuestion.create(user_id:u2.id, question_id:q2.id, choice: "333")
uq1 = UserQuestion.create(user_id:u1.id, question_id:q3.id, choice: "666")
uq2 = UserQuestion.create(user_id:u2.id, question_id:q4.id, choice: "888")