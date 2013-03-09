class OthersController < ApplicationController

  def create
	  @other = Other.new(params[:other])
      if @other.save
        flash[:success] = "Other: Succesfully Created"	
      else
        render 'new'
     end 
  end

  def edit
  
  end

  def destroy
    Other.find(params[:id]).destroy
  end

end