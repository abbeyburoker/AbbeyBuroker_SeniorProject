class CreateDirectories < ActiveRecord::Migration[5.0]
  def change
    create_table :directories do |t|
      t.string :name
      t.string :email
      t.string :graduation_year
      t.string :mentor_experience
      t.string :depauw_involvement

      t.timestamps
    end
  end
end
