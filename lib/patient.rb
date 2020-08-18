require 'pry' 


class Patient
  attr_accessor :name    # has a name
  
  @@all = []
  
  def initialize(name)  # has (initializes with) a name 
    @name = name        # has a name 
    @@all << self 
  end
  
  def self.all
    @@all
  end
  
  def appointments            # has many appointments 
   # binding.pry 
    Appointment.all.select{|appointment| appointment.patient == self} 
    # Appointment class -> all instances of Appointment class
    # -> selects from all of the instances of the Appointment class based off of patient using a variable called 'appointment' 
    # -> sets the selected variable for appointment to the patient that this instance of Appointment belongs to 
    # -> asks if that is equal to itself, which it is, so it returns true and prints all the appointments in the genre of the current instance of Patient
   # binding.pry 
  end

  
  def doctors    # has many doctors through appointments 
     appointments.map{|appointment| appointment.doctor}
   # calls the appointments method -> use collect to apply this doctor depending on the appointment
  end
  
end
