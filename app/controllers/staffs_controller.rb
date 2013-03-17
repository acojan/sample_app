class StaffsController < PeopleController
def new
  	@person = Staff.new
    @type = 'Staff'

    render 'people/new'
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