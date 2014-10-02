# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Career.count == 0
  Career.create!(name: "Diplomado en Divinidad")
  Career.create!(name: "Licenciatura en Divinidad")
  Career.create!(name: "Maestria en Divinidad")
end

if Course.count == 0
  Course.create!(name: "Hermeneutica")
  Course.create!(name: "Introduccion al Antiguo Testamento")
  Course.create!(name: "Nuevo Testamento I")
  Course.create!(name: "Nuevo Testamento II")

  Career.all.map{ |career|
    Course.all.map{ |course|
      CareerCourse.create!(career: career, course: course)
    }
  }

  Course.all.map{ |course|
    for i in 1..10 do
      Lesson.create!(name: "Lesson ##{i}", course: course)
    end
  }
end
