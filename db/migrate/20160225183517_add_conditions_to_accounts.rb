class AddConditionsToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :entertainment, :integer
    add_column :accounts, :coffee, :integer
    add_column :accounts, :meals_out, :integer
    add_column :accounts, :clothes_electronics, :integer
    add_column :accounts, :transportation, :integer
    add_column :accounts, :rent_mortgage, :integer
  end
end
