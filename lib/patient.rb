class Patient 
  @@all = [] 
  
  def self.all 
    @@all
  end 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  attr_accessor :name 
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments 
    Appointment.all.select do |appoint|
      appoint.patient == self 
    end 
  end 
  
  def doctors
    self.appointments.map do |appoint|
      appoint.doctor
    end 
  end 
  
end 