class OrganizationsController < PeopleController

	def new
    @person=Organization.new
    @type='Organization'

    render 'people/new'
  end

  def show
  	@org = Organization.find(params[:id])
	end 

  def printshow
    @org = Organization.find(params[:id])
    render 'printview', layout: false 
  end
  
  def edit
    @person = Person.find(params[:id])
    @type = @person.type
    render 'people/edit'
  end
  
	def create
	  @org = Organization.new(params[:organization])

      if @org.save
        flash[:success] = "Entry: Organization Succesfully Created"
        redirect_to @org	
      else
        render 'new'
     end 

    end
end