class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :difficulty
      t.integer :duration
      t.text :content
      t.references :family, null: false, foreign_key: true

      t.timestamps
    end
  end
end
