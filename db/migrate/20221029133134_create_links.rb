class CreateLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :links do |t|
      t.string :short,   null: false
      t.string :long,    null: false
      t.integer :clicks, default: 0

      t.timestamps
    end
  end
end
