class EntriesController < ApplicationController

	def new
		@person = Person.new
	end

	def create
    @person = Individual.new(params[:Person]) if :type == Individual
    @person = Organization.new(params[:Person]) if :type == Organization
    @person = Counselee.new(params[:Person]) if :type == Counselee
    @person = Staff.new(params[:Person]) if :type == Staff
    @person = Counselor.new(params[:Person]) if :type == Counselor
    @person = Student.new(params[:Person]) if :type == Student
    @person = Alumni.new(params[:Person]) if :type == Alumni

      if @person.save
        flash[:success] = "Entry Succesfully Created"	
      else
        render 'new'
     end 
    end

end
