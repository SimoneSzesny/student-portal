#id  start_date  end_date  degree  university_name details student_id
class EducationsController < ApplicationController
  def index
    @education = Unirest.get("https://resume-data-api-tubular-trio.herokuapp.com/education/#{params[:id]}").body
  end

  def new
  end

  def create
    @education = Unirest.post("https://resume-data-api-tubular-trio.herokuapp.com/education/",
      parameters: {
        start_date: params["start_date"],
        end_date: params["end_date"],
        degree: params["degree"],
        university_name: params["university_name"],
        details: params["details"],
        student_id: params["student_id"]
      }
    ).body
    # redirect_to "/ ENTER URL /#{@education['id']}"
  end

  def show
    @education = Unirest.get("https://resume-data-api-tubular-trio.herokuapp.com/education/#{params[:id]}").body
  end

  def edit
    @education = Unirest.get("https://resume-data-api-tubular-trio.herokuapp.com/education/#{params[:id]}").body
  end

  def update
    @education = Unirest.patch("https://resume-data-api-tubular-trio.herokuapp.com/education/#{params[:id]}",
        parameters: {
        start_date: params["start_date"],
        end_date: params["end_date"],
        degree: params["degree"],
        university_name: params["university_name"],
        details: params["details"],
        student_id: params["student_id"]
      }
    ).body
    # redirect_to "/ ENTER URL /#{@education['id']}"
  end

  def destroy
    @education = Unirest.delete("https://resume-data-api-tubular-trio.herokuapp.com/education/#{params[:id]}").body
    redirect_to ""
  end
end
