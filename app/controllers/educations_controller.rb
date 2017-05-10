#id  start_date  end_date  degree  university_name details student_id
class EducationsController < ApplicationController
  def index
    @education = Unirest.get("http://localhost:3000/ ENTER URL ").body
  end

  def new
  end

  def create
    @education = Unirest.post("http://localhost:3000/ ENTER URL",
      parameters: {
        ENTER: params["ENTER"]
      }
    ).body
    redirect_to "/ ENTER URL /#{@education['id']}"
  end

  def show
    @education = Unirest.get("http://localhost:3000/ ENTER URL /#{params[:id]}").body
  end

  def edit
    @education = Unirest.get("http://localhost:3000/ ENTER URL /#{params[:id]}").body
  end

  def update
    @education = Unirest.patch("http://localhost:3000 ENTER URL #{params[:id]}",
        parameters: {
        ENTER: params["ENTER"],
      }
    ).body
    redirect_to "/ ENTER URL /#{@education['id']}"
  end

  def destroy
    @education = Unirest.delete("http://localhost:3000 ENTER URL /#{params[:id]}").body
    redirect_to ""
  end
end
