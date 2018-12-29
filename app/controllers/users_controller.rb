class UsersController < ApplicationController
  def index
  	#@users =User.all
  	#@my_variable='something'

  	@user=User.all

    if cookies[:user_id]
  end


  def new 
  	@user=User.new
  end

  def create
  	User.create(email: params[ :user][ :email],  
  		password: params[ :user][ :password],  
  		name: params[ :user][ :name],
  		age: params[ :user][ :age]
  	   )

  	redirect_to action: 'index'
  end






  def edit
  	@user=User.find(params[:id])
  end



  def update
  	@user=User.find(params[:id])


  	@user.update(email: params[ :user][ :email],  
  		password: params[ :user][ :password],  
  		name: params[ :user][ :name],
  		age: params[ :user][ :age]
  	   )

  end



  

def sign_in
end


def create_session
  u=User.find_by(email: params[:email], password: params[:password])
  if(u.blank?)
    return redirect_to action: 'sign_in'
  end

  cookies[:user_id]=u.id
  redirect_to action: 'index'
end




end
