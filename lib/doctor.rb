class Doctor
  attr_accessor :name     # has a name 
  
  @@all = []      # knows about all Doctor instances
  
  def initialize(name)  #initializes with a name 
    @name = name
    @@all << self   # Adds itself to an array of all doctors 
  end               # knows about all Doctor instances
  
  def new_appointment(date, patient)   # given a date and a patient, creates a new appointment associated with that doctor
    Appointment.new(date, patient, self)
  end
    
  def appointments 
    Appointment.all.select{|appointment| appointment.doctor == self}
  end  
  
  def patients      # has many patients, THROUGH Appointments 
    Appointment.all.collect{|appointment| appointment.patients}.uniq
  end
 
  def self.all    # knows about all doctor instances 
    @@all
  end
  
end