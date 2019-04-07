class Patient
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
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end

  # CLASS METHODS
  def self.all
    @@all
  end
end
