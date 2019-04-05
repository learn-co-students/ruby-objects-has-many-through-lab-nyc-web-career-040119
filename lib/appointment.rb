#like song

class Appointment
  attr_accessor :doctor, :date, :patient

  @@all = []

  def initialize(doctor, patient, date)
    @doctor = doctor
    @date = date
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end

end
