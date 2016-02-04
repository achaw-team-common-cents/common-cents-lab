class Api::V1::AccountsController < ApplicationController
  def index
    @accounts = Account.all
  end
  def show
    @account = Account.find(params[:id])
  end
end
