class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.datetime :starts
      t.datetime :ends
      t.boolean :allDay

      t.timestamps
    end
  end
end
