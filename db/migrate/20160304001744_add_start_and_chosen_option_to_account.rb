class AddStartAndChosenOptionToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :start, :integer
    add_column :accounts, :chosen_option, :string
  end
end
