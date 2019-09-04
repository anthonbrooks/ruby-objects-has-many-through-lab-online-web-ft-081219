class Patient
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end 
  
  def self.all 
    @@all 
  end 
  
  def appointments
    Appointment.all.select { |appointment| appointment.patient == self }
  end 
  
  def doctors 
    appointments.map { appointments.doctor }
  end 
  
end 