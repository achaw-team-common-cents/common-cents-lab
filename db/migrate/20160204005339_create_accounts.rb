class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :pay_frequency_id
      t.decimal :expenses, precision: 10, scale: 2
      t.decimal :savings, precision: 10, scale: 2
      t.decimal :income, precision: 10, scale: 2
      t.integer :difficulty_id

      t.timestamps null: true
    end
  end
end
