class CounselorsController < PeopleController

  def new
  @person = Counselor.new
  @type = 'Counselor'
  @person.skills.build
  
  render 'people/new'
  end

  def show
  	@counselor = Counselor.find(params[:id])
	end 

  def printshow
    @counselor = Counselor.find(params[:id])
    render 'printview', layout: false 
  end

  def edit
    @person = Person.find(params[:id])
    @type = @person.type
    @person.skills.build if @person.skills == []
    render 'people/edit'
  end
  
	def create
	@counselor = Counselor.new(params[:counselor])
  @counselor.setAge
      if @counselor.save
        flash[:success] = "Entry: counselor Succesfully Created"
        redirect_to @counselor	
      else
        render 'new'
     end 
  end
end