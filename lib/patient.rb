class Patient
  attr_accessor :name, :doctors, :appointments
  
  @@all = []
  
  def initialize(name)
    @name = name
    @doctors = []
    @appointments = []
    
    @@all << self
  end
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
end