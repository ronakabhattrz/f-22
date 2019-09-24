class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :option_1
      t.string :option_2
      t.string :option_3
      t.string :option_4
      t.string :ans
      t.references :Chapter, foreign_key: true

      t.timestamps
    end
  end
end
