puts "cleaning data base"

User.destroy_all
Employment.destroy_all
Portfolio.destroy_all
Project.destroy_all
Blogpost.destroy_all

puts "creating data base"
puts "creating user"

ilia = User.new(
    email: "changeme@gmail.com",
    password: "changeme",
    last_name: 'changeme',
    first_name: 'changeme',
  )
ilia.save!

puts "created #{User.count} user"
puts "creating employment"

Employment.create!([{
    position_title: "Web and Digital Marketing Specialist",
    company_name: "LS Instruments",
    company_url: "www.lsinstruments.ch/en/",
    company_description: "Responsible for 360 degree digital marketing activities while maintaining and developing company sites, online products, content and best practices with a focus on closed-loop analytics and sales.",
    user_id: 1,
},
{
    position_title: "Founder | Digital Marketing Specialist",
    company_name: "The Digital Marketing Collaboration",
    company_url: "www.thedmcsa.co.za",
    company_description: "Founder and director of digital marketing agency since 2013 providing a range of services to build or improve SMEs online presence with a focus on delivering conversions through sales or qualified leads.",
    user_id: 1,
},
{
    position_title: "Marketing Manager",
    company_name: "180 Degrees Catering and Confectionery",
    company_url: "www.180degrees.co.za",
    company_description: "Employed during the company startup phase, I was responsible for establishing a marketing department that focused on digital marketing while handling multiple office and factory duties.",
    user_id: 1,
},
{
    position_title: "Marketing Coordinator",
    company_name: "T.E. Trade Events",
    company_url: "www.probeauty.co.za/",
    company_description: "Reporting to the Marketing Manager and Director, I created and implemented online strategies for multiple subsidiary brands in Professional Beauty, Hair, Aesthetics and Facilities Management.",
    user_id: 1,
},
{
    position_title: "Assistant Brand Manager",
    company_name: "Guitar Excellence",
    company_url: "www.guitarexcellence.co.za/",
    company_description: "Reporting to the Founder and CEO of GE, I developed online lesson material, introduced business management practices and assisted in digital marketing and content strategies.",
    user_id: 1,
}])

puts "#{Employment.count} employment posts created"
puts "creating portfolio"

Portfolio.create!([{
    client_name: "Food Ventures",
    client_url: "www.foodventures.com.sg/",
    client_description: "Food Ventures is a Singaporean based company that invests in food science and technology startups. They required a website that would communicate their professional interests in asian food solutions in a modern way.",
    user_id: 1,
},
{
    client_name: "Beyond Menus",
    client_url: "www.beyondmenus.com/",
    client_description: "Based in Bali, Beyond Menus is a long time hotel gifting and accessories company. The site now boasts a subscription service for customers of the Beyond Menus brand where they can easily view the companies product line.",
    user_id: 1,
},
{
    client_name: "Susewi",
    client_url: "www.susewi.life/",
    client_description: "With a team of experts situated in multiple locations around the world, Susewi produces algae based solutions for the food market with a current interest in fish feed substitutes. They needed a modern site that would emulate their values.",
    user_id: 1,
},
{
    client_name: "Munchachos",
    client_url: "www.munchachos.com/",
    client_description: "A London based startup, I reported to the CEO and Founder as well as managed the digital marketing activities and site of the brand; a food subscription box delivered weekly to families who want a healthy alternative to snacking for children.",
    user_id: 1,
},
{
    client_name: "K+A Architecture",
    client_url: "www.koenarch.co.za/",
    client_description: "Architect Brodwen Koen owns an Architecture Firm in South Africa that has been involved in over 100 projects ranging in construction costs from R2.5m to R1.32 billion. I created the K+A website as well as managed their digital marketing activities.",
    user_id: 1,
},
{
    client_name: "180 Degrees Catering and Confectionery",
    client_url: "www.180degrees.co.za/",
    client_description: "180 is a food service provider in South Africa specialising in catering and confectionery. They are also highly recongised for their line of catalogue and speciality cakes. I currently manage the 180 site as well as their digital marketing.",
    user_id: 1,
},
{
    client_name: "Jacfest",
    client_url: "www.jacfest.com/",
    client_description: "Jacfest are a team of music event organisers and artists based in Cambridge, UK. They needed a website that looked alive that could also issue tickets, accept payments easily and check-in guests to upcoming events.",
    user_id: 1,
},
{
    client_name: "Hugo Yoshikawa",
    client_url: "www.hugoyoshikawa.com/",
    client_description: "Hugo is an Illustrator working between Spain and London. Hugo wanted a site that would show off his work in a simple and modern way while also allowing people to purchase his artwork and other merchandise from his site securely.",
    user_id: 1,
},
{
    client_name: "MATI Trader",
    client_url: "www.timonandmati.com/",
    client_description: "MATI provides both free and paid educational resources for trading on the stock exchange. MATI needed a website that could sell their lesson material and accept online payments as well as capture leads and subscribers using automation.",
    user_id: 1,
},
{
    client_name: "South Alpha",
    client_url: "www.south-alpha.co.za/",
    client_description: "A Real Estate research and advisory company based in South Africa, South Alpha is currently developing their website with me as well as developing a webapp which we hope to release the BETA version in the near future.",
    user_id: 1,
},
{
    client_name: "Moopen Dentistry",
    client_url: "www.moopendentistry.com/",
    client_description: "A family practice, Moopen Dentistry needed a website that shared relevant information with its potential patients as well as capture leads and requests for bookings while maintaining a positive and vibrant user user interface.",
    user_id: 1,
},
{
    client_name: "Billionaires Row",
    client_url: "www.billionairesrowsa.co.za/",
    client_description: "Based in both America and South Africa, Billionaires Row sells premium luxury products, with champagne being its flagship seller. I created the site for the South African branch and managed their monthly digital marketing activities.",
    user_id: 1,
},
{
    client_name: "79 Au Vodka",
    client_url: "www.79auvodka.co.za/",
    client_description: "A Vodka filtered through gold, 79 Au Vodka is a startup company based in South Africa and the UK aiming at leaving their mark as a premium Vodka producer globally. 79 Au needed a simple website for their South African branch.",
    user_id: 1,
},
{
    client_name: "Alliance Fran??aise",
    client_url: "www.afdubai.org/",
    client_description:
    "Alliance Fran??ais is a major provider of official french tuition within the middle east. They needed operational expertise regarding Google Analytics, GA4 and conversion tracking using Google Tag Manager to accurately record their online sales performance.",
    user_id: 1,
}])

puts "#{Portfolio.count} portfolio posts created"
puts "creating projects"

Project.create!([{
    project_name: "Anything Goes",
    project_url: "www.anythinggoes-marketplace.herokuapp.com/",
    project_description: "A job marketplace application that is similar to Linkedin. Users can signup, post jobs, favourite jobs and apply to jobs.",
    user_id: 1,
},
{
    project_name: "Bandfeels",
    project_url: "www.bandfeels.herokuapp.com/",
    project_description: "Listen to music uploaded by artists and experience them through emotional or activity based tags. Currently under development.",
    user_id: 1,
},
{
    project_name: "Bartenderly",
    project_url: "www.bartenderly.herokuapp.com/",
    project_description: "A simple web app that allows users to create new cocktails that are displayed in a cocktail library as a part of my course work at Le Wagon.",
    user_id: 1,
},
{
    project_name: "Pegs",
    project_url: "www.pegs-time.herokuapp.com/",
    project_description: "A mobile webapp built with my team at Le Wagon. Users with shared laundry rooms can coordinate their wash schedule through the Pegs web application.",
    user_id: 1,
},
{
    project_name: "Air Studio",
    project_url: "www.rails-airstudio-506.herokuapp.com/",
    project_description: "During my time at Le Wagon, my group and I built an AirBnb styled webapp that served recording studios instead of apartments that are listed and rented.",
    user_id: 1,
},
{

    project_name: "Bloodbrother Studios",
    project_url: "www.bloodbrotherstudios.iliazolas.com/",
    project_description: "Bloodbrother Studios is my personal music production and performance project where I share the music I have created over my social channels and website.",
    user_id: 1,
}])

puts "#{Project.count} projects created"
puts "dbs created"