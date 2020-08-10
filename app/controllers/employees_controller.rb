class EmployeesController < ApplicationController

    def new
        #id = params[:format].to_i
        @employee = Employee.new
    end

    def create
        @employee = Employee.find(params[:id])
        @employee.create(employee_params)
        redirect_to company_path(@employee.company)
    end

    private

    def employee_params
        params.require(:employee).permit(:name, :title, :company_id)
    end


end
