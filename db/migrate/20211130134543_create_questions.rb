class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :content
      t.boolean :correct_answer
      t.references :family, null: false, foreign_key: true

      t.timestamps
    end
  end
end
