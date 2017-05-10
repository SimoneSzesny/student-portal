#id name  description url screenshot_url  student_id
class CapstonesController < ApplicationController
  def index
    capstones = Unirest.get("http://localhost:3000/ ENTER URL ").body
  end

  def new
  end

  def create
    @capstone = Unirest.post("http://localhost:3000/ ENTER URL",
      parameters: {
        ENTER: params["ENTER"]
      }
    ).body
    edirect_to "/ ENTER URL /#{@capstones['id']}"
  end

  def show
    capstones = Unirest.get("http://localhost:3000/ ENTER URL /#{params[:id]}").body
  end

  def edit
    capstones = Unirest.get("http://localhost:3000/ ENTER URL /#{params[:id]}").body
  end

  def update
    @capstone = Unirest.patch("http://localhost:3000 ENTER URL #{params[:id]}",
        parameters: {
        ENTER: params["ENTER"],
      }
    ).body
    edirect_to "/ ENTER URL /#{@capstones['id']}"
  end

  def destroy
    @capstone = Unirest.delete("http://localhost:3000 ENTER URL /#{params[:id]}").body
    redirect_to ""
  end
end
