class DevsController < ApplicationController
  def new
    @dev = Dev.new
  end

  def index
    @devs = Dev.all
    @dev = Dev.new
  end
  
  def show
    @dev = Dev.find(params[:id])
  end

  def create
    @dev = Dev.new(dev_params)

    if @dev.save
      redirect_to @dev
    else
      render 'new'
    end
  end
  def destroy
    @dev = Dev.find(params[:id])
    @dev.destroy

    redirect_to devs_path
  end

  private
    def dev_params
      params.require(:dev).permit(:devname)
    end
end
