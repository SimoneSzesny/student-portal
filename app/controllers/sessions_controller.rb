class SessionsController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    @student = Unirest.get("https://resume-data-api-tubular-trio.herokuapp.com/resumes").body
    if @student && @student.authenticate(params[:password])
      session[:student_id] = student.id
      flash[:success] = 'Successfully logged in!'
      redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'Successfully logged out!'
    redirect_to '/login'
  end

end
