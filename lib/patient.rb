class Patient
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # INSTANCE METHODS
  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end

  def appointments
    Appointment.all.select do |ap|
      ap.patient == self
    end
  end

  def doctors
    self.appointments.map do |ap|
      ap.doctor
    end
  end

  # CLASS METHODS
  def self.all
    @@all
  end
end
