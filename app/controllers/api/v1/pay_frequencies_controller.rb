class Api::V1::PayFrequenciesController < ApplicationController

  def index
    @pay_frequencies = PayFrequency.all
  end

  def show
    @pay_frequency = PayFrequency.find(params[:id])
  end
end
