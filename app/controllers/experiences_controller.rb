#id start_date  end_date  job_title company_name  details student_id
class ExperiencesController < ApplicationController
  def index
    @experience = Unirest.get("http://localhost:3000/ ENTER URL ").body
  end

  def new
  end

  def create
    @experience = Unirest.post("https://resume-data-api-tubular-trio.herokuapp.com/experiences",
      parameters: {
        start_date: params["start_date"],
        end_date: params["end_date"],
        job_title: params["job_title"],
        company_name: params["company_name"],
        details: params["details"],
        student_id: params["student_id"]
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
    @experience = Unirest.patch("https://resume-data-api-tubular-trio.herokuapp.com/experiences/#{params[:id]}",
        parameters: {
        Estart_date: params["start_date"],
        end_date: params["end_date"],
        job_title: params["job_title"],
        company_name: params["company_name"],
        details: params["details"],
        student_id: params["student_id"]
      }
    ).body
    redirect_to "/ ENTER URL /#{@experience['id']}"
  end

  def destroy
    @experience = Unirest.delete("https://resume-data-api-tubular-trio.herokuapp.com/experiences/#{params[:id]}").body
    redirect_to ""
  end
end
