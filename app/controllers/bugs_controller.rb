class BugsController < ApplicationController
  def new
    @bug = Bug.new
  end

  def update
    @bug = Bug.find(params[:id])
    if @bug.update(bug_params)
      redirect_to @bug
    else
      render 'edit'
    end
  end

  def index
    @bugs = Bug.all
    @bug = Bug.new
  end

  def show
    @bug = Bug.find(params[:id])
  end 

  def edit 
    @bug = Bug.find(params[:id])
  end

  def create
    @bug = Bug.new(bug_params)
    if @bug.save
      redirect_to @bug
    else
      render 'new'
    end
  end


  def destroy
    @bug = Bug.find(params[:id])
    @bug.destroy

    redirect_to bugs_path
  end

  private
    def bug_params
      params.require(:bug).permit(:title, :text)
    end
end
