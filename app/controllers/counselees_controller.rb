class CounseleesController < PeopleController

  def new
    @person = Counselee.new
    # @person.others.build
    # @person.spouses.build
    # @person.medications.build
    @person.problems.build

    @type = 'Counselee'
    render 'people/new'
  end  
  
  def show
  	@counselee = Counselee.find(params[:id])
	end 

	def create
	@counselee = Counselee.new(params[:counselee])
  @counselee.setAge
      if @counselee.save!
        flash[:success] = "Entry: Counselee Succesfully Created."
        redirect_to @counselee 
      else
        render 'new'
     end 
  end

end