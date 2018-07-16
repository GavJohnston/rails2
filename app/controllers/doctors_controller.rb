class DoctorsController < ApplicationController
 
  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy 

 def show
 @doctor = Doctor.find(params[:id])
 end 

 def create
 @clinic = Clinic.find(params[:clinic_id])
 @doctor = @clinic.doctors.create(doctor_params)
 redirect_to clinic_path(@clinic)
 end
 
 def destroy
 @clinic = Clinic.find(params[:clinic_id])
 @doctor = @clinic.doctors.find(params[:id])
 @doctor.destroy
 redirect_to clinic_path(@clinic)
 end 

 private
 def doctor_params
 params.require(:doctor).permit(:doctorname, :doctoremail, :doctorspeciality, :doctornumber, :doctorimage)
 end
end 

