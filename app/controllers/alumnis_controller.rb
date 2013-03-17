class AlumnisController < PeopleController

  def new
    @person = Alumni.new
    @type = 'Alumni'
    render 'people/new'
  end

  def show
  	@alumni = Alumni.find(params[:id])
	end 

	def create
	@alumni = Alumni.new(params[:alumni])
  	age = Date.today.year - @alumni.birthday.year
    @alumni.setAge
      if @alumni.save
        flash[:success] = "Entry: alumni Succesfully Created"
        redirect_to @alumni	
      else
        render 'new'
     end 
  end
end