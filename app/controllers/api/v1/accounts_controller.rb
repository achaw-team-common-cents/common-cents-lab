class Api::V1::AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end
  def show
    @account = Account.find(params[:id])
  end
  def create
    @account = Account.new(income: params[:income], expenses: params[:expenses], difficulty_id: params[:difficulty_id], savings: params[:savings], pay_frequency_id: params[:pay_frequency_id])
    if @account.save
      render :show
    else

    end
  end
end
