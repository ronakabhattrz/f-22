e1 = Exam.create(name: 'Internal')
e2 = Exam.create(name: 'External')

e1.subjects << Subject.create(name: 'Maths')
e1.subjects << Subject.create(name: 'Science')
e2.subjects << Subject.create(name: 'Computer')
e2.subjects << Subject.create(name: 'Music')

Subject.all.each_with_index do |s,index|	
	topics = ["Addition", "Interpolation", "Friqtion", "pythagoras", "Ms-Excel", "Ubuntu", "Singing", "Composing"]
	Topic.create(name: topics[index],subject_id: s.id)
end


Topic.all.each_with_index do |s,index|	
	chapters = ["Plus", "Minus", "XYZ", "PQR", "AAAAAAA", "BBBBBBB", "TEST1", "TEST2", "Cell", "Table", "Terminal", "Unix", "Vocal", "Editing", "Piano", "scales"]
	Chapter.create(name: chapters[index],topic_id: s.id)
end


Question.create(title: "Who is the PM Of India", option_1: "Rahul Gandhi", option_2: "Narendra Modi", option_3: "Rakhi Sawant", option_4: "Baraq Obama", ans: "Narendra Modi", Chapter_id: Chapter.last.id)