class AddUserIdToWays < ActiveRecord::Migration[5.2]
  def change
    add_column :ways, :user_id, :integer
  end
end
