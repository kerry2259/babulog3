class CreateBabies < ActiveRecord::Migration[5.0]
  def change
    create_table :babies do |t|
      t.string       :name,          null: false
      t.index        :name,         unique: true
      t.integer      :weight
      t.integer      :height
      t.integer      :temperature
      t.integer      :milk
      t.integer      :diapers
      t.integer      :poop
      t.string       :image
      t.timestamps
    end
  end
end
