class CounselingSessionsController < ApplicationController

	def index
		@cs=CounselingSession.all
	end 

	def new
	  @cs =CounselingSession.new
	end

	def create
	  @cs = CounselingSession.new(params[:counseling_session])
	  @cs.setNames
	  if @cs.save
        flash[:success] = "CounselingSession sucessfully created."	
      	render 'index'
      end
        flash[:error] = "Required fields are empty created."  
        render 'index'
     end 

	def edit 
	  @cs = CounselingSession.find(params[:id])
	end

	def updateta
  	 @cs = CounselingSession.find(params[:id])

    if @cs.update_attributes(params[:user])
      flash[:success] = "Session succesfully updated"
      render 'index'
    else 
      render 'edit'
    end
  end

	def destroy
    CounselingSession.find(params[:id]).destroy
    flash[:success] = "Entry removed from database."
    render 'index'
  end
end
