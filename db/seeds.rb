# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	Users.create([  {name: "Poon", user_verify: true },
					{name: "Fiam", user_verify: false },
	 				{name: "Knight", user_verify: false }
	 			);

	Courses.create([ {name: "User Interface Design", semester: "Year 4/1", teach_by: "Aj.Chate"}
					{name: "Optimization", semester: "Year 4/1", teach_by: "Aj. Wipawee" }
					{name: "Operation Management", semester: "Year 3/1", teach_by: "Aj. Parames"}
					{name: "Advanced Mathematics", semester: "Year 2/1", teach_by: "Aj. Chanchai"}
					{name: "Physics for Engineering", semester: "Year 1/1", teach_by: "Aj. Narumon"}
				  	{name: "Fundametal Data Structure", semester: "Year 2/1", teach_by: "Aj. Vishnu"}
				  	])

	Professors.create([ { name: "Aj.Chate"}])