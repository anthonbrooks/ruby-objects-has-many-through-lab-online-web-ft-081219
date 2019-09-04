class Patient
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def new_appointment(doctor, date)
    
  end 
  
  def self.all 
    @@all 
  end 
  
  def appointments
    Appointment.all.select { |appointment| appointment.patient == self }
  end 
  
  def doctors 
    Appointment.map { |doctor| doctor.patients == self }
  end 
  
end 