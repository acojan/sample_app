class AlumnisController < PeopleController

  def new
    @person = Alumni.new
    @type = 'Alumni'
    render 'people/new'
  end

  def show
  	@alumni = Alumni.find(params[:id])
	end 

  def printshow
    @alumni = Alumni.find(params[:id])
    render 'printview', layout: false 
  end

  def edit
    @person = Person.find(params[:id])
    @type = @person.type
    render 'people/edit'
  end
  
	def create
	@alumni = Alumni.new(params[:alumni])
    @alumni.setAge
      if @alumni.save
        flash[:success] = "Entry: alumni Succesfully Created"
        redirect_to @alumni	
      else
        render 'new'
     end 
  end
end