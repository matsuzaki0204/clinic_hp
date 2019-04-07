class DoctorsController < ApplicationController
  def index
    @doctor = Doctor.all
  end
  
  def create
     @doctor = Doctor.new(
      familyname: params[:familyname],
      firstname: params[:firstname],
      familykana: params[:familykana],
      firstkana: params[:firstkana],    
      gender: params[:gender],
      department: params[:department],
      # monday_am: params[:monday_am],
      # monday_pm: params[:monday_pm],
      # tuesday_am: params[:tuesday_am],
      # tuesday_pm: params[:tuesday_pm],
      # wednesday_am: params[:wednesday_am],
      # wednesday_pm: params[:wednesday_pm],
      # thursday_am: params[:thursday_am],
      # thursday_pm: params[:thursday_pm],
      # friday_am: params[:friday_am],
      # friday_pm: params[:friday_pm],
      # saturday_am: params[:saturday_am],
      # saturday_pm: params[:saturday_pm],
      # sunday_am: params[:sunday_am],
      # sunday_pm: params[:sunday_pm],
      enable_disable: params[:enable_disable],
      certification: params[:certification]
      )
    @doctor.save
   
    redirect_to("/doctors/index")
  end
  
  def edit
  
  end
  
  
end
