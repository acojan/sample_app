class CounselingSessionsController < ApplicationController

	def index
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

     end 

	def edit 
	end

	def delete
	end 
end
