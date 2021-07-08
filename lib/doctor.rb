class Doctor
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  attr_accessor :name 
  
  def new_appointment(patient, date)
    new_app = Appointment.new(date,patient,self)
  end 
  
  def appointments 
    Appointment.all.select do |appoint|
      appoint.doctor == self 
    end 
  end 
  
  def patients 
   self.appointments.map do |apt|
     apt.patient 
   end 
  end
    
  
  
end