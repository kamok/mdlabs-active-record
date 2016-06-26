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

10.times do |i|
	Patient.create(patient_name: "Patient#{i+1}",
								 patient_address: "some_patient_address#{i+1}",
								 patient_phone_number: "123-456-7890",
								 physician_id: (i*0.5).round)
end
   
5.times do |i|
	Speciman.create(sample_name: "Sample_Name",
									date_received: Time.now,
									sample_type: "Urine",
									physician_id: 1,
									patient_id: i+1)
end

5.times do |i|
	Speciman.create(sample_name: "Sample_Name",
									date_received: Time.now,
									sample_type: "Blood",
									physician_id: 2,
									patient_id: i+1)
end