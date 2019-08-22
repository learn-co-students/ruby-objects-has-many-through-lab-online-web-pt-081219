class Patient 
  attr_accessor :name, :appointments, :doctors
  @@all = []
  def initialize(name)
    @appointments = []
    @doctors = []
    @@all << self
    @name = name 
  end
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(doctor,date)
    
    appointment = Appointment.new(date,self,doctor) 
    
    
  end 
 
  
  def appointments
    Appointment.all.each{|el| @appointments << el if el.patient == self}
    @appointments
  end 
  
  def doctors
    Appointment.all.each{|el| @doctors << el.doctor if el.patient == self} 
    @doctors
  end
  
  
end