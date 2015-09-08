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

  def mercury_update
    politician = Politician.find(params[:id])
    politician.name = params[:content][:politician_name][:value]
    politician.role = params[:content][:politician_role][:value]
    politician.image = params[:content][:politician_image][:value]
    politician.previous_works = params[:content][:politician_previous_works][:value]
    politician.location = params[:content][:politician_location][:value]
    politician.save!
    render text: ""
  end

  private
  def politician_params
  	params.require(:politician).permit(:name, :role, :previous_works, :image, :location, :branch_id, :party_id)
  end
end

