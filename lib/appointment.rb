require 'pry'

class Appointment
  attr_accessor :date, :patient, :doctor
  
  @@all = []
  
  def initialize(date,patient,doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @appointments = []
    @@all << self
  end
  
  def appointments
    Patient.all.select {|patient|patient.appointment ==
    self} 
  end
  
  def self.all
    @@all
  end
end