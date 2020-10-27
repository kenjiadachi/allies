class AddSexualIdToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :sexual_id, :integer
  end
end
