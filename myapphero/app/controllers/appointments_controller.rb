class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  # GET /appointments
  # GET /appointments.json
  def index
    @appointments = Appointment.all
  end

  # GET /appointments/1
  # GET /appointments/1.json
  def show
  end

  # GET /appointments/new
  def new
    @appointment = Appointment.new
  end

  # GET /appointments/1/edit
  def edit
  end

  # POST /appointments
  # POST /appointments.json
  def create
    @appointment = Appointment.new(appointment_params)

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to @appointment, notice: 'Appointment was successfully created.' }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to @appointment, notice: 'Appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to appointments_url, notice: 'Appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  helper_method :generate

  def generate
    matchappoint('11:30am-12:30am', 'Mock_1', 'Platinum') 
    matchappoint('11:30am-12:30am', 'Mock_2', 'Platinum') 
    redirect_to appointments_url, notice: 'Appointment was successfully generated.' 
  end


################################################################ 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:appointment).permit(:section, :time_slot, :company, :student, :UIN)
    end

##############################################################
=begin
    def matchapp()
        matchappoint('9:30 - 9:50', 'Mock_1','apltinum')
    end
=end
    def matchappoint(arg, mock, level) 
      case mock
	when "Mock_1"
	selforcom="intvw_1_rep_no"
	when "Mock_2"
	selforcom="intvw_2_rep_no"
	when "Resume_1"
	selforcom="clinic_1_rep_no"
	when "Resume_2"
	selforcom="clinic_2_rep_no"
	when "Resume_3"
	selforcom="clinic_3_rep_no"	
	else
	selforcom="intvw_1_rep_no"
     end

      company = Company.where("sponsor_level = ? AND #{selforcom} > 0 ", level).collect {|item| [item.name, item.job_type, item.student_level, item.citizenship, item.send(selforcom)]}
      
      case mock
	when "Mock_1"
	student =  Student.where(Mock_1: arg).collect {|item| [item.UIN, item.name, item.degree, item.position_type, item.US_Citizen, item.send(mock)]}
	when "Mock_2"
	student =  Student.where(Mock_2: arg).collect {|item| [item.UIN, item.name, item.degree, item.position_type, item.US_Citizen, item.send(mock)]}
	when "Resume_1"
	student =  Student.where(Resume_1: arg).collect {|item| [item.UIN, item.name, item.degree, item.position_type, item.US_Citizen, item.send(mock)]}
	when "Resume_2"
	student =  Student.where(Resume_2: arg).collect {|item| [item.UIN, item.name, item.degree, item.position_type, item.US_Citizen, item.send(mock)]}
	when "Resume_3"
	student =  Student.where(Resume_3: arg).collect {|item| [item.UIN, item.name, item.degree, item.position_type, item.US_Citizen, item.send(mock)]}
	
	else
	student =  Student.where(Mock_1: arg).collect {|item| [item.UIN, item.name, item.degree, item.position_type, item.US_Citizen, item.send(mock)]}
     end

      #student =  Student.where(Mock_1: arg).collect {|item| [item.UIN, item.name, item.degree, item.position_type, item.US_Citizen, item.send(mock)]}
      
      student.each do |student|
       company.each do |item|
	    usif= item[3]=="US Citizen Only"? true:false
	    if (item[4] > 0 && item[1] == student[3] && item[2] == student[2] && usif == student[4])
            appointment = Appointment.new
            getone = student
            #student.pop
            appointment.section = mock
            appointment.time_slot = getone[5]
            appointment.company = item[0]
            appointment.student = getone[1]
            appointment.UIN = student[0]
            item[4]-=1
            appointment.save
	    break
            end
        end
      end
    end


    
################################################################
end
