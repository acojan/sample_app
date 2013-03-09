class StaffsController < PeopleController
def show
  	@staff = Staff.find(params[:id])
	end 

	def create
	@staff = Staff.new(params[:staff])
  	age = Date.today.year - @staff.birthday.year

      if @staff.save
        flash[:success] = "Entry: staff Succesfully Created"
        redirect_to @staff	
      else
        render 'new'
     end 
  end
end