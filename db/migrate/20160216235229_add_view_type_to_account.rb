class AddViewTypeToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :view_type, :integer
    remove_column :accounts, :user_id, :integer
  end
end
