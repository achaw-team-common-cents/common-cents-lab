class AccountsController < ApplicationController
  def new

  end

  def show
    @account = Account.find(params[:id])
    if params[:ty]
      render :thank_you
    end
  end
  def index
    @accounts = Account.all
    respond_to do |format|
      format.csv {send_data @accounts.to_csv, 
        disposition: "attachment; filename=accounts.csv",
        type: 'text/csv',
        stream: 'true', 
        buffer_size: '4096'
      }
    end
  end















end
