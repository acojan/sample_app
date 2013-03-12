class CounseleesController < ApplicationController

  def new
    @person = Counselee.new
    # @person.others.build
    # @person.spouses.build
    # @person.medications.build
    @person.build_problem

    @type = 'Counselee'
    render 'people/new'
  end  
  
  def show
  	@counselee = Counselee.find(params[:id])
	end 

	def create
	@counselee = Counselee.new(params[:counselee])
      if @counselee.save!
        flash[:success] = "Entry: Counselee Succesfully Created."
        redirect_to @counselee 
      else
        render 'new'
     end 
  end

end