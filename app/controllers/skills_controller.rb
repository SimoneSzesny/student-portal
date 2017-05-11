#id skill
class SkillsController < ApplicationController
  def index
    @skill = Unirest.get("https://resume-data-api-tubular-trio.herokuapp.com/skills/#{params[:id]}").body
  end

  def new
  end

  def create
    @skill = Unirest.post("https://resume-data-api-tubular-trio.herokuapp.com/skills/",
      parameters: {
        skill: params["skill"]
      }
    ).body
    # redirect_to "/ ENTER URL /#{@skill['id']}"
  end

  def show
    @skill = Unirest.get("https://resume-data-api-tubular-trio.herokuapp.com/skill/#{params[:id]}").body
  end

  def edit
    @skill = Unirest.get("https://resume-data-api-tubular-trio.herokuapp.com/resumes/#{params[:id]}").body
  end

  def update
    @skill = Unirest.patch("https://resume-data-api-tubular-trio.herokuapp.com/resumes/#{params[:id]}",
        parameters: {
        skill: params["skill"],
      }
    ).body
    # redirect_to "/ ENTER URL /#{@skill['id']}"
  end

  def destroy
    @skill = Unirest.delete("https://resume-data-api-tubular-trio.herokuapp.com/resumes/#{params[:id]}").body
    # redirect_to ""
  end
end
