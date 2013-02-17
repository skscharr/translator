class DropDownController < ApplicationController
  
  def index
    @translation = Translate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @translation }
    end
  end
  
  def show
    @translation = Translate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @translation }
    end
  end

end