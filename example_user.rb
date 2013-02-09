class User
  attr_accessor :name, :email, :permission

  def initialize(attributes = {})
    @name  = attributes[:name]
    @email = attributes[:email]
    @permission = attributes[:permission]
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
end