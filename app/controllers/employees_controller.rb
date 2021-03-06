require 'file_writer'

class EmployeesController < ApplicationController
  
  require 'employee_decorator'

  before_action :authenticate_user!
  before_action :set_employee, only: %i[ show edit update destroy ]

  # GET /employees or /employees.json
  def index
    @employees = current_user.employees.all
  end

  # GET /employees/1 or /employees/1.json
  def show
    
  end

  # GET /employees/new
  def new
    @employee = Employee.new
  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees or /employees.json
  def create
    @employee = Employee.new(employee_params)
    @employee.user_id = current_user.id

    e = BasicEmployee.new(@employee.name, @employee.position, @employee.availability)

    if params[:position].to_s.include?('Manager') || params[:position].to_s.include?('Supervisor') || params[:position].to_s.include?('Head')
      e = ManagementEmployee.new(e)
    end

    @text = "A new employee was added: " + e.details
    logger = FileWriter.instance
    logger.logInformation(@text)
    

    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: "Employee was successfully created." }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees/1 or /employees/1.json
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: "Employee was successfully updated." }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end

    e = BasicEmployee.new(@employee.name, @employee.position, @employee.availability)

    if params[:position].to_s.include?('Manager') || params[:position].to_s.include?('Supervisor') || params[:position].to_s.include?('Head')
      e = ManagementEmployee.new(e)
    end

    # The error i got from using this line: uninitialized constant ActiveRecord::Observer
    # observer = EmployeeObserver.instance
    # observer.after_update(e)

  end

  # DELETE /employees/1 or /employees/1.json
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: "Employee was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_params
      params.require(:employee).permit(:name, :position, :availability, :user_id)
    end
end
