###HOSPITAL

5.times do |i|
	Hospital.create(hospital_name: "Hospital#{i+1}", 
									hospital_address: "some_hospital_address#{i+1}")
end

###PHYSICIAN

5.times do |i|
	Physician.create(physician_name: "Doctor#{i+1}", 
									 physician_phone_number: "718-207-7558",
									 physician_type: "Cardiologist",
									 hospital_id: i+1)
end

###PATIENT

5.times do |i|
	Patient.create(patient_name: "Patient#{i+1}",
								 patient_address: "patient_#{i+1}_address 775",
								 patient_phone_number: "123-456-7890",
								 physician_id: 1)
end

5.times do |i|
	Patient.create(patient_name: "Patient#{i+6}",
								 patient_address: "patient_#{i+6}_address 776",
								 patient_phone_number: "123-456-7890",
								 physician_id: 2)
end

###SPECIMAN
   
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
									patient_id: i+6)
end

###ANALYTE

Analyte.create(analyte_name: "Iron", result_range: "1-10")
Analyte.create(analyte_name: "Zinc", result_range: "1-10")
Analyte.create(analyte_name: "Cocaine", result_range: "1-10")
Analyte.create(analyte_name: "Copper", result_range: "1-10")
Analyte.create(analyte_name: "Mary Jane", result_range: "1-10")
Analyte.create(analyte_name: "Meth", result_range: "1-10")
Analyte.create(analyte_name: "Oxycotton", result_range: "1-10")
Analyte.create(analyte_name: "Baba Kush", result_range: "1-10")

###RESULT

5.times do |i|
	Result.create(result_value: 5,
								reported_at: Time.new(2014,06),
								speciman_id: i+1,
								analyte_id: i+1)
end

5.times do |i|
	Result.create(result_value: 5,
								reported_at: Time.new(2014,06),
								speciman_id: 6+i,
								analyte_id: 8-i)
end

Physician.create(physician_name: "Doctor", physician_phone_number: "718-207-7558", physician_type: "Cardiologist" )