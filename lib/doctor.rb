require 'pry'

class Doctor
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name

    @@all << self
  end

  # INSTANCE METHODS
  def new_appointment(date, patient)
    Appointment.new(self, date, patient)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end

  # CLASS METHODS
  def self.all
    @@all
  end
end
