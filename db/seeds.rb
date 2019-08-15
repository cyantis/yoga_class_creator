# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

teacher = Teacher.create(username: "test_yogi", password: "%!#n'v'P(q4hR@[N%")
Lesson.create(lesson_type: "Vinyasa", teacher_id: 1)
Lesson.create(lesson_type: "Deep Stretch", teacher_id: 1)
Lesson.create(lesson_type: "Gentle", teacher_id: 1)
Lesson.create(lesson_type: "Yin", teacher_id: 1)
Lesson.create(lesson_type: "Restorative", teacher_id: 1)
Lesson.create(lesson_type: "Meditation", teacher_id: 1)
Lesson.create(lesson_type: "Prenatal", teacher_id: 1)
Lesson.create(lesson_type: "Kids", teacher_id: 1)
Lesson.create(lesson_type: "Workshop", teacher_id: 1)
Lesson.create(lesson_type: "Other", teacher_id: 1)
