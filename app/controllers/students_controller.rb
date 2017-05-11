#id first_name  last_name email phone_number  short_bio linkdin_url twitter_handle  blog_url  resume_url  github_url  photo_url
class StudentsController < ApplicationController
  def index

    # @student = Unirest.get("http://localhost:3000/ ENTER URL ").body

    @student = Unirest.get("http://localhost:3000/ ENTER URL ").body

    # @students = JSON.parse(STUDENTS.to_json)
  end

  def new
  end

  def create
    @student = Unirest.post("http://localhost:3000/ ENTER URL",
      parameters: {
        ENTER: params["ENTER"]
      }
    ).body
    redirect_to "/ ENTER URL /#{@student['id']}"
  end

  def show
    @student = Unirest.get("https://resume-data-api-tubular-trio.herokuapp.com/resumes/#{params[:id]}").body
    render "show.html.erb"
  end

  def edit
    @student = Unirest.get("http://localhost:3000/ ENTER URL /#{params[:id]}").body
  end

  def update
    @student = Unirest.patch("http://localhost:3000 ENTER URL #{params[:id]}",
        parameters: {
        ENTER: params["ENTER"],
      }
    ).body
    redirect_to "/ ENTER URL /#{@student['id']}"
  end

  def destroy
    @student = Unirest.delete("http://localhost:3000 ENTER URL /#{params[:id]}").body
    redirect_to ""
  end
end

