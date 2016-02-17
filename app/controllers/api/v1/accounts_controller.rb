class Api::V1::AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end
  def show
    @account = Account.find(params[:id])
  end
  def create
    @account = Account.new(income: params[:income], expenses: params[:expenses], difficulty_id: params[:difficulty_id], savings: params[:savings], pay_frequency_id: params[:pay_frequency_id], view_type: rand(0..2))
    if @account.save
      render :show
    else

    end
  end
end
