class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :solution
      t.string :resource

      t.timestamps
    end
  end
end
