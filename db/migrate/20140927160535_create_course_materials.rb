class CreateCourseMaterials < ActiveRecord::Migration
  def change
    create_table :course_materials do |t|
      t.references :course, index: true
      t.string :name

      t.timestamps
    end
  end
end
