class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.references :course, index: true
      t.string :name
      t.string :video
      t.text :description

      t.timestamps
    end
  end
end
