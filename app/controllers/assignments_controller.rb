class AssignmentsController < ApplicationController
  def new
    @assignment = Assignment.new        
  end
   
  def index
    @assignments = Assignment.all          
    @assignment = Assignment.new             
  end

  def show 
    @assignment = Assignment.find(params[:id])          
  end
      
  def create
    @assignment = Assignment.new(assignment_params)
    if @assignment.save
      redirect_to @assignment
    else
      render 'new'
    end      
  end

  def destroy
    @assignment = Assignment.find(params[:id])
    @assignment.destroy
    
    redirect_to assignments_path
  end
  private    
  def assignment_params         
    params.require(:assignment).permit(:dev_id, :bug_id)            
  end
end
