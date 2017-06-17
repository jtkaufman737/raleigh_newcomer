class FactsController < ApplicationController
  def show
    @fact = Fact.find(params[:id])
  end

  def new
    @fact = Fact.new
  end

  def create
    @fact = Fact.new(fact_params)

    if @fact.save
      redirect_to @fact
    else
      render 'new'
    end
  end

  def index
    @facts = Fact.all
  end

  private
    def fact_params
      params.require(:fact,:id).permit(:category,:body,:source)
    end
end
