class CreateUsers < ActiveRecord::Migration[4.2]
  def change
    create_table :users do |t|
      t.string :username, unique: true, null: false
      t.string :password_digest
      t.timestamps null: false
    end
  end
end
