class AddAdminCodeToUserAndRemoveNameFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :first_name
    rename_column :users, :last_name, :admin_code
  end
end
