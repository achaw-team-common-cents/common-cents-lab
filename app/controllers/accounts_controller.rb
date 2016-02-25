class AccountsController < ApplicationController
  def new

  end

  def show
    @account = Account.find(params[:id])
  end
  def index
    @accounts = Account.all
    respond_to do |format|
      format.csv {send_data @accounts.to_csv}
    end
  end















end
