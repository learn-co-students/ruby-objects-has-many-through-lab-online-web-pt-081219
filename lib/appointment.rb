class Appointment
  
  @@all = [] 
  
  def self.all 
    @@all
  end 
  
  def initialize(date,patient,doctor)
    @patient = patient
    @doctor = doctor 
    @date = date 
    @@all << self
  end 
  
  attr_accessor :patient, :doctor, :date
  
  
end 