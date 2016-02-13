class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :accounts

  validate :account_has_admin_code

  private
  def account_has_admin_code
    puts admin_code
    errors.add(:admin_code, "is not correct") unless admin_code === "test admin code"
  end

end
