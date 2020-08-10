class EmployeesController < ApplicationController

    def new
        #id = params[:format].to_i
        @employee = Employee.new
    end

    def create
        @employee = Employee.create(employee_params)
        redirect_to company_path(@employee.company)
    end

    def delete_form
    end

    def destroy
        id = params[:employee_id].to_i
        employee = Employee.find(id)
        company = employee.company
        employee.destroy
        redirect_to company_path(company)
    end

    private

    def employee_params
        params.require(:employee).permit(:name, :title, :company_id)
    end


end
