class Doctor 
  @@all = []
  attr_accessor :name , :appointments, :patients
  def initialize(name)
    @@all << self 
    @patients = []
    @appointments = []
    @name = name
  end
  
  def self.all
    @@all
  end 
  
  def new_appointment(patient,date)
    appoitment = Appointment.new(date,patient,self)
  end
  
  def appointments 
    Appointment.all.each{|el| @appointments << el if el.doctor == self}
  end
  
  def patients
 
    Appointment.all.each{|el| @patients << el.patient} 
     @patients
  end
end