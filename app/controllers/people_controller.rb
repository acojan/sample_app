class PeopleController < ApplicationController

	def new
    @type = (params[:type])
	  @person = Individual.new        if @type == 'Individual'
    @person = Organization.new      if @type == 'Organization'
    @person = Counselee.new         if @type == 'Counselee'
    @person = Staff.new             if @type == 'Staff'
    @person = Counselor.new         if @type == 'Counselor'
    @person = Student.new           if @type == 'Student'
    @person = Alumni.new            if @type == 'Alumni'
	end
  
  def destroy
    Person.find(params[:id]).destroy
    flash[:success] = "Individual removed."
    redirect_to individuals_url
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])

    if @person.update_attributes(params[:person])
      flash[:success] = "Profile updated"
      redirect_to @person
    else 
      render 'edit'
    end
  end 
   
end
