class StudentsController < ApplicationController
  STUDENTS = [
    {
      id: 1,
      first_name: "Ron", 
      last_name: "Kidzler", 
      email: "ron@gmail.com", 
      phone_number: "773-474-2443", 
      short_bio: "Ron is a great student", 
      linkedin_url: "https://www.linkedin.com", 
      twitter_handle: "@rontheman", 
      personal_blog_url: "https://www.heresmyblog.com", 
      resume_url: "https://www.hireme.com", 
      github_url: "https;//www.github.com", 
      photo: "https://wwww.heresapicture.com",
      experiences: [
        {
          id: 3,
          start_date: "03-14-13", 
          end_date: "05-14-14",
          job_title: "intern", 
          details: "organized, filed, got coffee", 
          student_id: 1
        }
      ],
      educations: [
        {
          id: 12,
          start_date: "09-01-12", 
          end_date: "06-05-16",
          degree: "Masters in Education", 
          university_name: "ISU", 
          details: " Worked really hard!", 
          student_id: 1
        }
      ],
      skills: [
        {
          id:7,
          skill_name: "Ruby, Html, CSS",
          student_id: 1
        }
      ],
      capstones: [
        {
          id:9,
          name: "environmental help",
          description: "helps the earth",
          url: "https://www.capstone.com",
          student_id: 1
        }
      ]
    }
  ]

  def index
    # @student = Unirest.get("http://localhost:3000/ ENTER URL ").body
    @students = JSON.parse(STUDENTS.to_json)
  end

  def new
  end

  def create
    @student = Unirest.post("http://localhost:3000/ ENTER URL",
      parameters: {
        ENTER: params["ENTER"]
      }
    ).body
    redirect_to "/ ENTER URL /#{@cat['id']}"
  end

  def show
    @student = Unirest.get("http://localhost:3000/ ENTER URL /#{params[:id]}").body
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

