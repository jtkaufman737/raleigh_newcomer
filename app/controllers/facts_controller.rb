class FactsController < ApplicationController

def index
 @facts=Fact.all
end

def new
  @fact = Fact.new
end

def create
  @fact=Fact.new(fact_params)
  puts fact_params

  binding.pry
  if @fact.save
    redirect_to facts_url
  else
    redirect_to new_fact_url
  end

  respond_to do |format|
  if @fact.save
    format.html {redirect_to @fact, notice: 'New fact created'}
  else
    format.html {render action: 'new'}
  end
end
end


def show
  @fact=Fact.find(params[:id])
end


def edit
  @fact = Fact.find(params[:id])
end

def update
  fact = Fact.find(params[:id])
  fact.update(fact_params)

  redirect_to fact
end

def destroy
  fact = Fact.find(params[:id])
  fact.destroy

  redirect_to facts_path
end

private
def fact_params
  params.require(:fact).permit(:body, :category, :id)
end

end
