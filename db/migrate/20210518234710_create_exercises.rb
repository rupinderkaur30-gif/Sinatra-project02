class CreateExercises < ActiveRecord::Migration[4.2]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :reps
      t.integer :minutes
      t.integer :sets
      t.integer :workout_id
      t.timestamps null: false
    end
  end
end
