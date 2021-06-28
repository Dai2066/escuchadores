class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.datetime :start_time
      t.float :duration
      t.date :date
      t.string :type
      t.string :place
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
