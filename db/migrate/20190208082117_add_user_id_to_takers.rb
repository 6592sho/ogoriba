class AddUserIdToTakers < ActiveRecord::Migration[5.2]
  def change
    add_column :takers, :user_id, :integer
  end
end
