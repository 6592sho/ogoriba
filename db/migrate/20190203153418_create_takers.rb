class CreateTakers < ActiveRecord::Migration[5.2]
  def change
    create_table :takers do |t|
      t.string :name
      t.integer :age
      t.integer :place_id
      t.integer :gender_id

      t.timestamps
    end
  end
end
