class PartiesController < ApplicationController
  def index
  	@parties = Party.all
    @parliament = Branch.find_by :name => "Cabinet"
  end

  def show
  	@party = Party.find params[:id]
  end

  def new
  	@parties = Party.new
    redirect_to root_path unless @current_user && @current_user.admin?
  end

  def create
    redirect_to root_path unless @current_user && @current_user.admin?
  	@party = Party.create party_params
  	redirect_to party_path(@party)
  end

  def edit
  	@party = Party.find params[:id]
    redirect_to root_path unless @current_user && @current_user.admin?
  end

  def destroy
    redirect_to root_path unless @current_user && @current_user.admin?
    party = Party.find params[:id]
    party.destroy
    redirect_to parties_path
  end

  def update
    redirect_to root_path unless @current_user && @current_user.admin?
  	@party = Party.find params[:id]
  	if @party.update party_params
  		redirect_to root_path
  	else
  		render :edit
  	end
  end

  private
  def party_params
  	params.require(:party).permit(:name, :ideology, :seats, :members, :history, :emblem)
  end
end