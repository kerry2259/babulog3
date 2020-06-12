class CreateUserBabies < ActiveRecord::Migration[5.0]
  def change
    create_table :user_babies do |t|
      t.references :baby, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
