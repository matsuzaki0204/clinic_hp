class PatientsController < ApplicationController
  
  def index
    @patients = Patient.all
  end

  def new
    
  end
  
  def create
    @patient = Patient.new(
      patient_id: params[:id],
      familyname: params[:familyname],
      firstname: params[:firstname],
      familykana: params[:familykana],
      firstkana: params[:firstkana],    
      gender: params[:gender],
      password: params[:password],
      email: params[:email],
      birthday: params[:birthday],
      zip: params[:zip01],
      pref: params[:pref01],
      city: params[:addr01],
      addr1: params[:addr02],
      tel: params[:tel]
      )
    @patient.save
    @patient = Patient.last
    @patient.patient_id = patientid_calc(@patient.id)
    # @patient.patient_id = sprintf("%05d", @patient.id)
    @patient.save
    
    redirect_to("/mypage")
  end
  
  def login_form
  end
  
  def login
    @patient = Patient.find_by(email: params[:email], password: params[:password])
    if @patient
      flash[:notice] = "ログインしました"
      session[:patient_id] = @patient.id
      redirect_to("/mypage")
    else
      @error_message = "メールアドレスまたはパスワードが間違っています"
      @email = params[:email]
      @password = params[:password]
      render("patients/login_form")
    end
  end
  
  def logout
    session[:patient_id] = nil
    flash[:notice] = "ログアウトしました"
    redirect_to("/login")
  end

  def mypage
  end
  
  def edit
    @patient = Patient.find_by(id: params[:id])
  end
  
  private
    def patientid_calc(id)
          patient_id = sprintf("%05d",id)
          return patient_id
    end

end