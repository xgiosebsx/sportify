class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :place
      t.string :time
      t.string :date
      t.string :sport

      t.timestamps null: false
    end
  end
end
