#id skill
class SkillsController < ApplicationController
  def index
    @skill = Unirest.get("http://localhost:3000/ ENTER URL ").body
  end

  def new
  end

  def create
    @skill = Unirest.post("http://localhost:3000/ ENTER URL",
      parameters: {
        ENTER: params["ENTER"]
      }
    ).body
    redirect_to "/ ENTER URL /#{@skill['id']}"
  end

  def show
    @skill = Unirest.get("http://localhost:3000/ ENTER URL /#{params[:id]}").body
  end

  def edit
    @skill = Unirest.get("http://localhost:3000/ ENTER URL /#{params[:id]}").body
  end

  def update
    @skill = Unirest.patch("http://localhost:3000 ENTER URL #{params[:id]}",
        parameters: {
        ENTER: params["ENTER"],
      }
    ).body
    redirect_to "/ ENTER URL /#{@skill['id']}"
  end

  def destroy
    @skill = Unirest.delete("http://localhost:3000 ENTER URL /#{params[:id]}").body
    redirect_to ""
  end
end
