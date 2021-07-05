# like artist
require 'pry'
class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(self, date, patient)
  end

  def appointments
    Appointment.all
  end

  def patients
    appointments.map {|appt| appt.patient}
  end

end
