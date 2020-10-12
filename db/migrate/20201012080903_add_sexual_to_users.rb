class AddSexualToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :sexual, :string
  end
end
