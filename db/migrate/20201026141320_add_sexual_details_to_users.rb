class AddSexualDetailsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :sexual_details, :string
  end
end
