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

end
