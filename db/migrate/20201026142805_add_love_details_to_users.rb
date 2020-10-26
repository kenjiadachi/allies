class AddLoveDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :love_details, :string
  end
end
