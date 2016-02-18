class Account < ActiveRecord::Base
  belongs_to :user
  belongs_to :difficulty
  belongs_to :pay_frequency

  def calculate_amount_needed
    return savings + (pay_frequency.paid_per_month * income) - (3 * expenses)
  end


end
