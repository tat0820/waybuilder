class RemoveNameFromWays < ActiveRecord::Migration[5.2]
  def change
    remove_column :ways, :name, :string
  end
end
