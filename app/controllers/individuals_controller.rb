class IndividualsController < PeopleController

  def new
    @person = Individual.new
    @type = 'Individual'

    render 'people/new'
  end

	def show
  	@individual = Individual.find(params[:id])
	end 

  def printshow
    @individual = Individual.find(params[:id])
    render 'printview', layout: false 
  end

  def edit
    @person = Person.find(params[:id])
    @type = @person.type
    render 'people/edit'
  end

	def create
	@individual = Individual.new(params[:individual])
  @individual.setAge
      if @individual.save
        flash[:success] = "Entry: Individual Succesfully Created"
        redirect_to @individual	
      else
        render 'new'
     end 
  end

end