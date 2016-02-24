class Account < ActiveRecord::Base
  belongs_to :user
  belongs_to :difficulty
  belongs_to :pay_frequency

  def calculate_amount_needed
    return (3 * expenses) - savings
  end

  def calculate_percentage
    annual_income = 12 * (pay_frequency.paid_per_month * income)
    return (amount_needed / annual_income * 100).round(2)
  end

  def calculate_weekly
    return amount_needed / 104
  end

  def self.to_csv
    CSV.generate do |csv|
      csv << ["Date Added", "Savings ($)", "Monthly Expenses ($)", "Pay Frequency", "Average Income Per Paycheck ($)", "Amount Needed to Cover 3 Months ($)", "Difficulty Finding a New Job", "View Type"]
      all.each do |account|
        csv << [account.created_at, account.savings, account.expenses, account.pay_frequency.name, account.income, account.amount_needed, account.difficulty.name, account.view_type]
      end
    end
  end
end
