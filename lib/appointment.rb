class Appointment
  attr_accessor :date, :patient, :doctor    # initialize with a name, doctor, and patient,
                                          # of which none are changeable
  @@all = []     # knows about all appointment  instances 
  
  def initialize(date, patient, doctor)  # initialize with a name, doctor, and patient
    @name = name         # initialize with name 
    @doctor = doctor      # instance of Appointment belongs to a doctor 
    @patient = patient      # instance of Appointment belongs to a patient
    @@all << self       # knows about all appointment instances 
  end
  

  def self.all     # knows about all appointment instances 
    @@all
  end
  
end