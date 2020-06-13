class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string     :title,    null: false
      t.datetime   :start,    null: false
      t.datetime   :end,      null: false
      t.boolean    :allDay
      t.timestamps
    end
  end
end
