class VisitsController < ApplicationController
http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy 

 def show
 @visit = Visit.find(params[:customer_id])
 end 

 def create
 @customer = Customer.find(params[:customer_id])
 @visit = @customer.visits.create(visit_params)
 redirect_to customer_path(@customer)
 end
 
 
 
 def destroy
 @customer = Customer.find(params[:customer_id])
 @visit = @customer.visits.find(params[:id])
 @visit.destroy
 redirect_to customer_path(@customer)
 end 

 private
 def visit_params
 params.require(:visit).permit(:visitdate, :visitnextdate, :visitissue, :visitresolution, :visitimage, :visitdoctor, :visitprescription, :image)
 end
end 
