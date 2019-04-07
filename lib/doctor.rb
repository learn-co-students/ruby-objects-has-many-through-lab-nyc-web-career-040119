require 'pry'

class Doctor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  #  INSTANCE METHODS
  def new_appointment(patient, date)
    Appointment.new(self, patient, date)
  end

  def appointments
    Appointment.all.select do |ap|
      ap.doctor == self
    end
  end

  def patients
    self.appointments.map do |ap|
      ap.patient
    end

  end
  # CLASS METHODS
  def self.all
    @@all
  end
end

# binding.pry
