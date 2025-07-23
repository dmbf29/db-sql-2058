require 'sqlite3'
DB = SQLite3::Database.new("patients_doctors.sqlite")

class Doctor
  def initialize(attributes = {})
    @id = attributes[:id] || attributes['id']
    @first_name = attributes[:first_name] || attributes['first_name']
    @last_name = attributes[:last_name] || attributes['last_name']
    @age = attributes[:age] || attributes['age']
    @specialty = attributes[:specialty] || attributes['specialty']
  end

  # Doctor.all -> has replaced our doctor_repo.all
  def self.all
    DB.results_as_hash = true
    results = DB.execute('SELECT * FROM doctors')
    results.map do |doctor_hash|
      Doctor.new(doctor_hash)
    end
  end


end


# @doctor_repository.all -> instances of doctors
p Doctor.all
# p Doctor.count


# def self.count
#   DB.execute('SELECT COUNT(*) FROM doctors')[0][0]
# end
