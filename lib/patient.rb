class Patient
  attr_accessor :name, :appointments, :doctors
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
    @doctors = []
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
end