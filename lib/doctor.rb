class Doctor
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all 
  end 
  
  def apointments 
    Appointment.all.select { |appointment| appointment.doctor == self }
  end 
  
  def new_appointment
    Appointment.new()
  end 
  
  def patients
    
  end 
  
end 