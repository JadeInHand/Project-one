class PoliticiansController < ApplicationController
   def index
  	@politicians = Politician.all
  end

  def show
  	@politician = Politician.find params[:id]
  end

  def new
  	@politicians = Politician.new
  end

  def create
  	@politician = Politician.create politician_params
  	redirect_to politician_path(@politician)
  end

  def edit
  	@politician = Politician.find params[:id]
  end

  def destroy
    politician = Politician.find params[:id]
    politician.destroy
    redirect_to politicians_path
  end

  def update
  	@politician = Politician.find params[:id]
  	if @politician.update politician_params
  		redirect_to root_path
  	else
  		render :edit
  	end
  end

  private
  def politician_params
  	params.require(:politician).permit(:name, :role, :previous_works, :image, :location, :branch_id, :party_id)
  end
end

