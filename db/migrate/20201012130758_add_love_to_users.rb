class AddLoveToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :love, :string
  end
end
