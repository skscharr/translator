class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.string :question
      t.string :ans1
      t.string :ans2
      t.string :ans3
      t.string :ans4
      t.integer :correctAns

      t.timestamps
    end
  end
end
