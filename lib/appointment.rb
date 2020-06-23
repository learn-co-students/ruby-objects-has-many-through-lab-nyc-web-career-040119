class Appointment

  attr_reader :doctor,:patient,:date

  @@appointments = []

  def initialize(doctor,patient,date)
    @doctor = doctor
    @date = date
    @patient = patient
    @@appointments << self
  end

  def self.all
    @@appointments
  end


end