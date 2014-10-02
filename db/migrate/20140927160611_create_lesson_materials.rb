class CreateLessonMaterials < ActiveRecord::Migration
  def change
    create_table :lesson_materials do |t|
      t.references :lesson, index: true
      t.string :name

      t.timestamps
    end
  end
end
