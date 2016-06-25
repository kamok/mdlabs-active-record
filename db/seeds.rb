5.times do |i|
	Hospital.create(hospital_name: "Hospital#{i+1}", 
									hospital_address: "some_hospital_address#{i+1}")
end

5.times do |i|
	Physician.create(physician_name: "Doctor#{i+1}", 
									 physician_phone_number: "718-207-7558",
									 physician_type: "Cardiologist",
									 hospital_id: i+1)
end

