class Patient

  attr_reader :name

  @@patients = []

  def initialize(name)
    @name = name
    @@patients << self
  end


  def new_appointment(doctor,date)
    Appointment.new(doctor,self,date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    self.appointments.map do |appointment|
      appointment.doctor
    end

  end

  def self.all
    @@patients
  end



end