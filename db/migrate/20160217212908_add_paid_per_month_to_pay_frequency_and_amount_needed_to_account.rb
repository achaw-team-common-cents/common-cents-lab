class AddPaidPerMonthToPayFrequencyAndAmountNeededToAccount < ActiveRecord::Migration
  def change
    add_column :pay_frequencies, :paid_per_month, :integer
    add_column :accounts, :amount_needed,:decimal, precision: 5, scale: 2
  end
end
