class Api::V1::DifficultiesController < ApplicationController

  def index
    @difficulties = Difficulty.all
  end

  def show
    @difficulty = Difficulty.find(params[:id])
  end
end
