class Appointment
  attr_accessor :patient, :date, :doctor
  @@all = []

  def initialize(date, patient, doctor)
    @patient = patient
    @date = date
    @doctor = doctor
    @@all << self
    doctor.appointments << self
    doctor.patients << patient
    patient.appointments << self
    patient.doctors << doctor
  end

  def self.all
    @@all
  end
end