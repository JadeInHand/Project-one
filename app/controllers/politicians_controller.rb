class PoliticiansController < ApplicationController
   def index
  	@politicians = Politician.all
  end

  def show
  	@politician = Politician.find params[:id]
  end

  def new
    redirect_to root_path unless @current_user && @current_user.admin?
  	@politicians = Politician.new
  end

  def create
    redirect_to root_path unless @current_user && @current_user.admin?
  	@politician = Politician.create politician_params
  	redirect_to politician_path(@politician)
  end

  def edit
    redirect_to root_path unless @current_user && @current_user.admin?
  	@politician = Politician.find params[:id]
  end

  def destroy
    redirect_to root_path unless @current_user && @current_user.admin?
    politician = Politician.find params[:id]
    politician.destroy
    redirect_to politicians_path
  end

  def update
    redirect_to root_path unless @current_user && @current_user.admin?
  	@politician = Politician.find params[:id]
  	if @politician.update politician_params
  		redirect_to root_path
  	else
  		render :edit
  	end
  end

  private
  def politician_params
  	params.require(:politician).permit(:name, :role, :previous_works, :image, :location, :branch_id, :party_id, :longitude, :latitude)
  end
end

