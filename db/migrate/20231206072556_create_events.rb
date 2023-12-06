class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :title
      t.string :host
      t.date :time
      t.string :location

      t.timestamps
    end
  end
end
