class AddModelIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :model_id, :integer
  end
end
