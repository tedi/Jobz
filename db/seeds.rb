# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Adding a Whole bunch of Recruiters"
Recruiter.create company: "Blue Water Media"
Recruiter.create company: "DC Web Designers"
Recruiter.create company: "Reef Light Interactive"
Recruiter.create company: "Wood Street"
Recruiter.create company: "If Only"
Recruiter.create company: "Beyond the Web"



def get_random_recruiter
	recruiters = Recruiter.all
	rec_array = []
	recruiters.each do |recruiter|
		rec_array << recruiter.id
	end
	rec_array.sample
end

puts "Adding a Whole bunch of Locations"
Location.create name: "Washington, DC"
Location.create name: "Arlington, VA"
Location.create name: "Alexandria, VA"
Location.create name: "Chevy Chase, MD"
Location.create name: "Bethesda, MD"
Location.create name: "Fairfax, VA"
Location.create name: "Rockville, MD"


def get_random_location
	locations = Location.all
	loc_array = []
	locations.each do |location|
		loc_array << location.id
	end
	loc_array.sample
end




puts "Adding a Whole bunch of Jobs"
Job.create name: "UX Designer", description: "This UX Designer will work with UX , Creative, technology, Strategy and Business Intelligence teams to determine audience segments, business requirements and user experience to support an optimal business solution. The User Experience Designer will integrate business needs, UCD principles, visual design and architectural solutions into deliverables, and articulate, white board, document and manage all aspects of the user experience throughout an engagement’s lifecycle.", excerpt: "The UX Designer will serve as a vital component in ensuring that the user is represented and advocated for, so that the final experience is true to the consumer", keywords: "Storyboards, Flow Diagrams", salary: 70000, status: 1, rec_id: get_random_recruiter, location_id: get_random_location
Job.create name: "Web Developer", description: "Excellent communication skills are a must as you will be communicating with all the members of your cross functional team. You should be well versed in the latest JavaScript frameworks, CSS3, responsive development and knowledgeable of Razor and C", excerpt: "You will work on creating an amazing experience across all devices for our customers through frontend development and some backend development.", keywords: "JavaScript, HTML5", salary: 70000, status: 1, rec_id: get_random_recruiter, location_id: get_random_location
Job.create name: "Product Manager", description: "This is a unique, 'start-from-scratch' opportunity to build a suite of integrated, self-service customer support capabilities across our web site and our core products. These capabilities will help millions of users across the globe to manage their DocuSign accounts, get product help and connect with our industry leading Customer Service team over the web. You will own and continually improve key performance metrics that directly impact customer satisfaction and our bottom line.", excerpt: "The Sr.Product Manager, Web Support is responsible for owning and driving the web support roadmap and delivery of a new web support experience", keywords: "Marketing, Program Management", salary: 70000, status: 1, rec_id: get_random_recruiter,  location_id: get_random_location
Job.create name: "Data Scientist", description: "We also are now seeking a Data Scientist to join our expanding unit. Our newest member to join our team, will enjoy a competitive salary, outstanding benefits, and the chance to grow and grow and grow! If you are a Senior Data Analyst and have expertise in the following areas: Extensive practical knowledge of Data Mining, Predictive Analytics; Knowledge of SQL and experience with large relational databases; Big Data; Enterprise Data...then we want you!", excerpt: "If you are a Data Scientist with experience, please read on", keywords: "Data Mining, Predictive Analytics", salary: 70000, status: 1, rec_id: get_random_recruiter, location_id: get_random_location
Job.create name: "Data Scientist", description: "Why work at the same kinda place you work at now? Why not work somewhere that is awesome? Come join us so you can prepare experiments on Data. Lots of Data. More Data than you can possible ever use", excerpt: "The last job you will ever have", keywords: "Beyond Exceptional, Amazing Personality", salary: 120000, status: 1, rec_id: get_random_recruiter, location_id: get_random_location
Job.create name: "Product Manager", description: "Software has feelings too. Software knows when you are hot or cold. Software knows when you are hungry. Come feed on our new product line", excerpt: "The person who accept this job will never go hungry", keywords: "Agressive, Unyielding", salary: 50000, status: 1, rec_id: get_random_recruiter,  location_id: get_random_location


puts "Adding a Whole bunch of Seekers"
JobSeeker.create objective: "UX Designer position that utilizes my design skills and enables me to make a positive contribution to the organization", current_pos: "UX Designer", grad_year: 1995, college: "JMU", degree: "BAFA", loc_id: get_random_location
JobSeeker.create objective: "To secure a position with a well established organization with a stable environment that will lead to a lasting relationship in the field of Web Development", current_pos: "Web Developer", grad_year: 2012, college: "UVA", degree: "BSCSE", loc_id: get_random_location
JobSeeker.create objective: "To obtain a position that will enable me to use my strong organizational skills, educational background, and ability to work well with people", current_pos: "Product Manager", grad_year: 2000, college: "GMU", degree: "MSCSE", loc_id: get_random_location
JobSeeker.create objective: "Create integrated strategies to develop and expand existing data sets, software evolution, and media enhancement", current_pos: "Data Scientist", grad_year: 2011, college: "SFCC", degree: "AA", loc_id: get_random_location
JobSeeker.create objective: "UX Designer position with a well established organization with a stable environment that will lead to a lasting relationship in the field of cool computer stuff", current_pos: "UX Designer", grad_year: 1992, college: "VA Tech", degree: "BAFA", loc_id: get_random_location
JobSeeker.create objective: "To secure a position imagining Dragons", current_pos: "Web Developer", grad_year: 2010, college: "Penn State", degree: "BSEE", loc_id: get_random_location
JobSeeker.create objective: "To obtain a position that will enable me to use my strong communication skills, expertise, and ability to chill out with people", current_pos: "Product Manager", grad_year: 2002, college: "Florida", degree: "MSCSE", loc_id: get_random_location
JobSeeker.create objective: "Create integrated strategies to numb people with my ability to expand and contract space and time", current_pos: "Data Scientist", grad_year: 2009, college: "Alabama", degree: "MAFA", loc_id: get_random_location



