class AddImageToTakers < ActiveRecord::Migration[5.2]
  def change
    add_column :takers, :image, :string
  end
end
