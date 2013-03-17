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

	def create
	@counselor = Counselor.new(params[:counselor])
      if @counselor.save
        flash[:success] = "Entry: counselor Succesfully Created"
        redirect_to @counselor	
      else
        render 'new'
     end 
  end
end