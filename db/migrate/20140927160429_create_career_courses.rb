class CreateCareerCourses < ActiveRecord::Migration
  def change
    create_table :career_courses do |t|
      t.references :career, index: true
      t.references :course, index: true

      t.timestamps
    end
  end
end
