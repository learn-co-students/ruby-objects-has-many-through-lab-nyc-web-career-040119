# CONNECTOR CLASS

class Appointment
  @@all = []

  attr_reader :doctor, :patient, :date

  def initialize(doctor_object, patient, date)
    @doctor = doctor_object
    @patient = patient
    @date = date

    @@all << self
  end

  # INSTANCE METHODS

  # CLASS METHODS
  def self.all
    @@all
  end
end
