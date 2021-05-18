class CreateWorkouts < ActiveRecord::Migration[4.2]
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
