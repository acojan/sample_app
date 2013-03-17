class PeopleController < ApplicationController
  
  def index
    @people = Person.search(params[:search],params[:type])
  end

  def destroy
    Person.find(params[:id]).destroy
    flash[:success] = "Entry removed from database."
    redirect_to '/people/'
  end

  def edit
    @person = Person.find(params[:id])
    @type = @person.type
  end

  def update
    @person = Person.find(params[:id])
    x=@person.type.downcase.to_sym
    if @person.update_attributes(params[x])
      flash[:success] = "Profile updated"
      redirect_to @person
    else 
      render 'edit'
    end
  end 
   
end
