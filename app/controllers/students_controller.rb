class StudentsController < PeopleController

  def create
    @student = Student.new(params[:student])

      if @user.save
        flash[:success] = "Entry creation succesful."	
        redirect_to @student
      else
        render 'new'
     end 
  end

  def show
  	@student = Student.find(params[:id])
  end 

end