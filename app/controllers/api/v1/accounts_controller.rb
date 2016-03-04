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
      @account.update(amount_needed: @account.calculate_amount_needed)
      render :show
    else

    end
  end
  def update
    @account = Account.find(params[:id])
    @account.attributes = {income: params[:income], expenses: params[:expenses], difficulty_id: params[:difficulty_id], savings: params[:savings], pay_frequency_id: params[:pay_frequency_id], view_type: params[:view_type], entertainment: params[:entertainment], coffee: params[:coffee], meals_out: params[:meals_out], clothes_electronics: params[:clothes_electronics], transportation: params[:transportation], rent_mortgage: params[:rent_mortgage],start: params[:start], chosen_option: params[:chosen_option]}
    if @account.save
      render :show
    else

    end
  end


end
