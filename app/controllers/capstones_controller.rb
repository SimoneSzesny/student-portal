#id name  description url screenshot_url  student_id
class CapstonesController < ApplicationController
  def index
    capstones = Unirest.get("http://localhost:3000/ ENTER URL ").body
  end

  def new
  end

  def create
    @capstone = Unirest.post("https://resume-data-api-tubular-trio.herokuapp.com/capstones",
      parameters: {
        name: params["name"],
        description: params["description"],
        url: params["url"],
        screenshot_url: params["screenshot_url"],
        student_id: params["student_id"]
      }
    ).body
    redirect_to "/ ENTER URL /#{@capstones['id']}"
  end

  def show
    capstones = Unirest.get("http://localhost:3000/ ENTER URL /#{params[:id]}").body
  end

  def edit
    capstones = Unirest.get("http://localhost:3000/ ENTER URL /#{params[:id]}").body
  end

  def update
    @capstone = Unirest.patch("https://resume-data-api-tubular-trio.herokuapp.com/capstones/#{params[:id]}",
        parameters: {
        Eame: params["name"],
        description: params["description"],
        url: params["url"],
        screenshot_url: params["screenshot_url"],
        student_id: params["student_id"]
      }
    ).body
    redirect_to "/ ENTER URL /#{@capstones['id']}"
  end

  def destroy
    @capstone = Unirest.delete("https://resume-data-api-tubular-trio.herokuapp.com/capstones/#{params[:id]}").body
    redirect_to ""
  end
end
