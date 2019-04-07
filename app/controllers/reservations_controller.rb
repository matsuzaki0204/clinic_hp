class ReservationsController < ApplicationController
  def accepted
  end
  
  def create
    @patient = Patient.find_by(patient_id: params[:patient_id], password: params[:password])
    if 
      @reservation = Reservation.new(
      patient_id: params[:id],
      password: params[:password],
      time_zone: params[:time_zone],
      department: params[:department]
      )
      redirect_to("/mypage")
    else
      render("/reservations/reserve")
    end
  end
end
