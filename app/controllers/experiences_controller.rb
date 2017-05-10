#id start_date  end_date  job_title company_name  details student_id
class ExperiencesController < ApplicationController
  def index
    @experience = Unirest.get("http://localhost:3000/ ENTER URL ").body
  end

  def new
  end

  def create
    @experience = Unirest.post("http://localhost:3000/ ENTER URL",
      parameters: {
        ENTER: params["ENTER"]
      }
    ).body
    redirect_to "/ ENTER URL /#{@experience['id']}"
  end

  def show
    @experience = Unirest.get("http://localhost:3000/ ENTER URL /#{params[:id]}").body
  end

  def edit
    @experience = Unirest.get("http://localhost:3000/ ENTER URL /#{params[:id]}").body
  end

  def update
    @experience = Unirest.patch("http://localhost:3000 ENTER URL #{params[:id]}",
        parameters: {
        ENTER: params["ENTER"],
      }
    ).body
    redirect_to "/ ENTER URL /#{@experience['id']}"
  end

  def destroy
    @experience = Unirest.delete("http://localhost:3000 ENTER URL /#{params[:id]}").body
    redirect_to ""
  end
end
