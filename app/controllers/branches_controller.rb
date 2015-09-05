class BranchesController < ApplicationController
  def index
  	@branches = Branch.all
  end

  def show
  	@branch = Branch.find params[:id]
  end

  def new
  	@branches = Branch.new
  end

  def create
  	@branch = Branch.create branch_params
  	redirect_to branch_path(@branch)
  end

  def edit
  	@branch = Branch.find params[:id]
  end

  def destroy
    branch = Branch.find params[:id]
    branch.destroy
    redirect_to branches_path
  end

  def update
  	@branch = Branch.find params[:id]
  	if @branch.update branch_params
  		redirect_to root_path
  	else
  		render :edit
  	end
  end

  private
  def branch_params
  	params.require(:branch).permit(:name, :functions, :powers, :history)
  end
end