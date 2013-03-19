class StaffsController < PeopleController
def new
  	@person = Staff.new
    @type = 'Staff'

    render 'people/new'
	end 

def show
    @staff = Staff.find(params[:id])
end

def printshow
    @staff = Staff.find(params[:id])
    render 'printview', layout: false 
end 

def edit
    @person = Person.find(params[:id])
    @type = @person.type
    render 'people/edit'
end

	def create
	@staff = Staff.new(params[:staff])
  @staff.setAge
      if @staff.save
        flash[:success] = "Entry: staff Succesfully Created"
        redirect_to @staff	
      else
        render 'new'
     end 
  end
end