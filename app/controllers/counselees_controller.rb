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
  
  def edit
    @person = Person.find(params[:id])
    @type = @person.type
    @person.problems.build if @person.problems == []
    render 'people/edit'
  end

  def show
  	@counselee = Counselee.find(params[:id])
	end 

  def printshow
    @counselee = Counselee.find(params[:id])
    render 'printview', layout: false 
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