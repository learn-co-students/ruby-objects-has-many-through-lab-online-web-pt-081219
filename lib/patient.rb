class Patient
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def new_appointment(doctor, date)
    new_appointment  =  Appointment.new(date, self, doctor)
    new_appointment
  end
  
  def appointments
    Appointment.all.find_all {|appointment| appointment.patient == self}
  end
  
  def doctors
    appointments.map {|appointment| appointment.doctor}
  end
  
end