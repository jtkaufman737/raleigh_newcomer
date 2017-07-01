class FactsController < ApplicationController
##  http_basic_authenticate_with name: "dhh", password: "secret", except:
##  [:index, :show]

  def index
    @facts = Fact.all
  end

  def show
    @fact= Fact.find(params[:id])
  end

  def new
    @fact= Fact.new
  end

  def edit
    @fact= Fact.find(params[:id])
  end

  def create
    @fact= Fact.new(fact_params)

    if @fact.save
      redirect_to @fact
    else
      render 'new'
    end
  end

  def update
    @fact= Fact.find(params[:id])

    if @fact.update(fact_params)
      redirect_to @fact
    else
      render 'edit'
    end
  end

  def destroy
    @fact= Fact.find(params[:id])
    @fact.destroy

    redirect_to facts_path
  end

  private
    def fact_params
      params.require(:fact).permit(:category, :body,:source,:id)
    end
end
