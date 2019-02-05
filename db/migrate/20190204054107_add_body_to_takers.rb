class AddBodyToTakers < ActiveRecord::Migration[5.2]
  def change
    add_column :takers, :body, :text
  end
end
