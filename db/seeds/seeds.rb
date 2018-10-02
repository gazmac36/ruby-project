require_relative('../../models/volunteer')
require_relative('../../models/service_user')
require_relative('../../models/befriending')
require_relative('../../models/category')
require_relative('../../models/volunteer_category')
require_relative('../../models/service_user_category')

# Volunteers
volunteer1 = Volunteer.new(
  'name' => 'Gabriel Jefferson',
  'age' => '25',
  'address_line1' => '9583 Sed Av.',
  'address_line2' => '',
  'address_town' => 'Talgarth',
  'address_county' => 'BR',
  'address_postcode' => 'LL4E 8VB',
  'contact_phone' => '06650 896790',
  'contact_email' => 'aliquam.enim.nec@eratvolutpat.co.uk')

volunteer1.save

volunteer2 = Volunteer.new(
  'name' => 'Zeus Jordan',
  'age' => '25',
  'address_line1' => '400-6693 Et St.',
  'address_line2' => '',
  'address_town' => 'Hatfield',
  'address_county' => 'HR',
  'address_postcode' => 'LR00 3WQ',
  'contact_phone' => '04508 995387',
  'contact_email' => 'Nullam.velit.dui@velitegetlaoreet.ca')

volunteer2.save

volunteer3 = Volunteer.new(
  'name' => 'Dale Jensen',
  'age' => '25',
  'address_line1' => '3782 Euismod Road',
  'address_line2' => '',
  'address_town' => 'Glossop',
  'address_county' => 'Derbyshire',
  'address_postcode' => 'LN77 9UR',
  'contact_phone' => '04733 682742',
  'contact_email' => 'malesuada.fringilla@nisi.co.uk')

volunteer3.save

volunteer4 = Volunteer.new(
  'name' => 'Raven England',
  'age' => '25',
  'address_line1' => 'Ap #418-8677 Donec Av.',
  'address_line2' => '',
  'address_town' => 'Tredegar',
  'address_county' => 'MO',
  'address_postcode' => 'VJ4 7OG',
  'contact_phone' => '07137 149212',
  'contact_email' => 'at.auctor.ullamcorper@Duis.net')

volunteer4.save

volunteer5 = Volunteer.new(
  'name' => 'Orlando Bright',
  'age' => '25',
  'address_line1' => '9110 Est, Rd.',
  'address_line2' => '',
  'address_town' => 'Barrhead',
  'address_county' => 'RF',
  'address_postcode' => 'KP96 9JB',
  'contact_phone' => '04999 815978',
  'contact_email' => 'magna@ipsumdolor.com')

volunteer5.save

volunteer6 = Volunteer.new(
  'name' => 'Paul Conner',
  'age' => '25',
  'address_line1' => 'P.O. Box 887, 5962 Elit, Av.',
  'address_line2' => '',
  'address_town' => 'East Kilbride',
  'address_county' => 'Lanarkshire',
  'address_postcode' => 'OP1N 0YE',
  'contact_phone' => '07718 011384',
  'contact_email' => 'sed@Nunclectus.org')

volunteer6.save

volunteer7 = Volunteer.new(
  'name' => 'Kiayada Mccoy',
  'age' => '25',
  'address_line1' => 'P.O. Box 579, 2372 Commodo Rd.',
  'address_line2' => '',
  'address_town' => 'Rothes',
  'address_county' => 'Morayshire',
  'address_postcode' => 'C10 6EP',
  'contact_phone' => '03357 676461',
  'contact_email' => 'dui.semper.et@nec.ca')

volunteer7.save

volunteer8 = Volunteer.new(
  'name' => 'Bruno Finley',
  'age' => '25',
  'address_line1' => 'Ap #132-2913 Nibh Rd.',
  'address_line2' => '',
  'address_town' => 'Laurencekirk',
  'address_county' => 'Kincardineshire',
  'address_postcode' => 'YC54 0GC',
  'contact_phone' => '09488 147281',
  'contact_email' => 'dapibus.ligula@loremluctusut.ca')

volunteer8.save

volunteer9 = Volunteer.new(
  'name' => 'Xenos Cote',
  'age' => '25',
  'address_line1' => 'Ap #722-3384 A, Rd.',
  'address_line2' => '',
  'address_town' => 'Brighton',
  'address_county' => 'SS',
  'address_postcode' => 'YD1 5YK',
  'contact_phone' => '00433 351223',
  'contact_email' => 'Nullam.vitae.diam@elementumsemvitae.com')

volunteer9.save

volunteer10 = Volunteer.new(
  'name' => 'Erica Butler',
  'age' => '25',
  'address_line1' => '470-4144 Nisl St.',
  'address_line2' => '',
  'address_town' => 'Helmsdale',
  'address_county' => 'SU',
  'address_postcode' => 'PY92 1BD',
  'contact_phone' => '00068 398839',
  'contact_email' => 'Aenean.eget@nonjusto.net')

volunteer10.save

# Service Users
service_user1 = ServiceUser.new(
  'name' => 'Jacqueline Porter',
  'age' => '25',
  'address_line1' => 'P.O. Box 906, 8831 Leo, Street',
  'address_line2' => '',
  'address_town' => 'Gloucester',
  'address_county' => 'Gloucestershire',
  'address_postcode' => 'EB5 7PO',
  'contact_phone' => '01863 694761',
  'contact_email' => 'orci@nonsapien.edu')

service_user1.save

service_user2 = ServiceUser.new(
  'name' => 'Kathleen Sanchez',
  'age' => '25',
  'address_line1' => '775-6983 Quam Rd.',
  'address_line2' => '',
  'address_town' => 'Chepstow',
  'address_county' => 'MO',
  'address_postcode' => 'Z10 3AW',
  'contact_phone' => '03128 220966',
  'contact_email' => 'dapibus@eu.edu')

service_user2.save

service_user3 = ServiceUser.new(
  'name' => 'Caleb Franco',
  'age' => '25',
  'address_line1' => 'Ap #930-3604 Lacinia. Road',
  'address_line2' => '',
  'address_town' => 'Blairgowrie',
  'address_county' => 'PE',
  'address_postcode' => 'TW0 7XV',
  'contact_phone' => '01907 889616',
  'contact_email' => 'Aliquam.vulputate.ullamcorper@orci.com')

service_user3.save

service_user4 = ServiceUser.new(
  'name' => 'Eugenia Yang',
  'age' => '25',
  'address_line1' => 'Ap #701-1536 Pede. Avenue',
  'address_line2' => '',
  'address_town' => 'Penicuik',
  'address_county' => 'ML',
  'address_postcode' => 'J4H 7VM',
  'contact_phone' => '05320 357168',
  'contact_email' => 'feugiat.nec.diam@netus.org')

service_user4.save

service_user5 = ServiceUser.new(
  'name' => 'Mariam Richards',
  'age' => '25',
  'address_line1' => '126-6658 Elementum, Ave',
  'address_line2' => '',
  'address_town' => 'Uppingham. Cottesmore',
  'address_county' => 'RU',
  'address_postcode' => 'R8 0MP',
  'contact_phone' => '07295 483966',
  'contact_email' => 'Suspendisse@est.edu')

service_user5.save

service_user6 = ServiceUser.new(
  'name' => 'Alexa Sampson',
  'age' => '25',
  'address_line1' => '6124 Ultricies Av.',
  'address_line2' => '',
  'address_town' => 'Torquay',
  'address_county' => 'DE',
  'address_postcode' => 'UO3M 4GT',
  'contact_phone' => '08760 124060',
  'contact_email' => 'ipsum.leo@lobortis.com')

service_user6.save

service_user7 = ServiceUser.new(
  'name' => 'Cynthia Mccormick',
  'age' => '25',
  'address_line1' => 'Ap #437-9263 Urna Rd.',
  'address_line2' => '',
  'address_town' => 'Preston',
  'address_county' => 'Lancashire',
  'address_postcode' => 'Y50 3GS',
  'contact_phone' => '01117 885936',
  'contact_email' => 'consectetuer.adipiscing@Nuncsedorci.org')

service_user7.save

service_user8 = ServiceUser.new(
  'name' => 'Nathan Daniels',
  'age' => '25',
  'address_line1' => 'Ap #115-1913 Mauris St.',
  'address_line2' => '',
  'address_town' => 'Kilwinning',
  'address_county' => 'Ayrshire',
  'address_postcode' => 'CM8 3IO',
  'contact_phone' => '05631 228976',
  'contact_email' => 'nibh.enim@in.edu')

service_user8.save

service_user9 = ServiceUser.new(
  'name' => 'Samuel Hayes',
  'age' => '25',
  'address_line1' => 'P.O. Box 400, 9883 Eu Road',
  'address_line2' => '',
  'address_town' => 'Gateshead',
  'address_county' => 'Durham',
  'address_postcode' => 'Z8 7SV',
  'contact_phone' => '01246 151038',
  'contact_email' => 'Sed@Nullamutnisi.net')

service_user9.save

service_user10 = ServiceUser.new(
  'name' => 'Tallulah Green',
  'age' => '25',
  'address_line1' => 'Ap #399-9490 Consequat Ave',
  'address_line2' => '',
  'address_town' => 'Haverfordwest',
  'address_county' => 'Pembrokeshire',
  'address_postcode' => 'BY92 7HD',
  'contact_phone' => '00090 459175',
  'contact_email' => 'metus.In.lorem@egestas.com')

service_user10.save

# Befriending
befriending1 = Befriending.new(
  'location' => 'Coffee Shop',
  'volunteer_id' => volunteer1.id,
  'service_user_id' => service_user1.id
)

befriending1.save

befriending2 = Befriending.new(
  'location' => 'Ikea',
  'volunteer_id' => volunteer2.id,
  'service_user_id' => service_user2.id
)

befriending2.save

befriending3 = Befriending.new(
  'location' => 'Timbuktu',
  'volunteer_id' => volunteer3.id,
  'service_user_id' => service_user3.id
)

befriending3.save

befriending4 = Befriending.new(
  'location' => 'Roller Disco',
  'volunteer_id' => volunteer4.id,
  'service_user_id' => service_user4.id
)

befriending4.save

# Categories
category1 = Category.new('name' => 'Addiction')
category2 = Category.new('name' => 'Carers')
category3 = Category.new('name' => 'Elderly')
category4 = Category.new('name' => 'Ethnic Minorities')
category5 = Category.new('name' => 'Gender/Sexuality')
category6 = Category.new('name' => 'Homelessness')
category7 = Category.new('name' => 'Learning Disability')
category8 = Category.new('name' => 'Mental Health')
category9 = Category.new('name' => 'Physical Disability')
category10 = Category.new('name' => 'Refugees/Asylum Seekers')
category11 = Category.new('name' => 'Sensory Impairment')

category1.save
category2.save
category3.save
category4.save
category5.save
category6.save
category7.save
category8.save
category9.save
category10.save
category11.save

# Volunteer categories

volunteer1_category1 = VolunteerCategory.new('volunteer_id' => volunteer1.id, 'category_id' => category1.id)

volunteer1_category1.save

volunteer1_category2 = VolunteerCategory.new('volunteer_id' => volunteer1.id, 'category_id' => category2.id)

volunteer1_category2.save

volunteer1_category3 = VolunteerCategory.new('volunteer_id' => volunteer1.id, 'category_id' => category3.id)

volunteer1_category3.save


volunteer2_category4 = VolunteerCategory.new('volunteer_id' => volunteer2.id, 'category_id' => category4.id)

volunteer2_category4.save

volunteer2_category5 = VolunteerCategory.new('volunteer_id' => volunteer2.id, 'category_id' => category5.id)

volunteer2_category5.save

volunteer2_category6 = VolunteerCategory.new('volunteer_id' => volunteer2.id, 'category_id' => category6.id)

volunteer2_category6.save


volunteer3_category7 = VolunteerCategory.new('volunteer_id' => volunteer3.id, 'category_id' => category7.id)

volunteer3_category7.save

volunteer3_category8 = VolunteerCategory.new('volunteer_id' => volunteer3.id, 'category_id' => category8.id)

volunteer3_category8.save

volunteer3_category9 = VolunteerCategory.new('volunteer_id' => volunteer3.id, 'category_id' => category9.id)

volunteer3_category9.save


volunteer4_category10 = VolunteerCategory.new('volunteer_id' => volunteer4.id, 'category_id' => category10.id)

volunteer4_category10.save

volunteer4_category11 = VolunteerCategory.new('volunteer_id' => volunteer4.id, 'category_id' => category11.id)

volunteer4_category11.save

volunteer4_category1 = VolunteerCategory.new('volunteer_id' => volunteer4.id, 'category_id' => category1.id)

volunteer4_category1.save


volunteer5_category2 = VolunteerCategory.new('volunteer_id' => volunteer5.id, 'category_id' => category2.id)

volunteer5_category2.save

volunteer5_category3 = VolunteerCategory.new('volunteer_id' => volunteer5.id, 'category_id' => category3.id)

volunteer5_category3.save

volunteer5_category4 = VolunteerCategory.new('volunteer_id' => volunteer5.id, 'category_id' => category4.id)

volunteer5_category4.save


volunteer6_category5 = VolunteerCategory.new('volunteer_id' => volunteer6.id, 'category_id' => category5.id)

volunteer6_category5.save

volunteer7_category6 = VolunteerCategory.new('volunteer_id' => volunteer7.id, 'category_id' => category6.id)

volunteer7_category6.save

volunteer8_category7 = VolunteerCategory.new('volunteer_id' => volunteer8.id, 'category_id' => category7.id)

volunteer8_category7.save

volunteer9_category8 = VolunteerCategory.new('volunteer_id' => volunteer9.id, 'category_id' => category8.id)

volunteer9_category8.save

volunteer10_category9 = VolunteerCategory.new('volunteer_id' => volunteer10.id, 'category_id' => category9.id)

volunteer10_category9.save

# Service User categories

service_user1_category1 = ServiceUserCategory.new('service_user_id' => service_user1.id, 'category_id' => category1.id)

service_user1_category1.save

service_user1_category2 = ServiceUserCategory.new('service_user_id' => service_user1.id, 'category_id' => category2.id)

service_user1_category2.save

service_user1_category3 = ServiceUserCategory.new('service_user_id' => service_user1.id, 'category_id' => category3.id)

service_user1_category3.save


service_user2_category4 = ServiceUserCategory.new('service_user_id' => service_user2.id, 'category_id' => category4.id)

service_user2_category4.save

service_user2_category5 = ServiceUserCategory.new('service_user_id' => service_user2.id, 'category_id' => category5.id)

service_user2_category5.save

service_user2_category6 = ServiceUserCategory.new('service_user_id' => service_user2.id, 'category_id' => category6.id)

service_user2_category6.save


service_user3_category7 = ServiceUserCategory.new('service_user_id' => service_user3.id, 'category_id' => category7.id)

service_user3_category7.save

service_user3_category8 = ServiceUserCategory.new('service_user_id' => service_user3.id, 'category_id' => category8.id)

service_user3_category8.save

service_user3_category9 = ServiceUserCategory.new('service_user_id' => service_user3.id, 'category_id' => category9.id)

service_user3_category9.save


service_user4_category10 = ServiceUserCategory.new('service_user_id' => service_user4.id, 'category_id' => category10.id)

service_user4_category10.save

service_user4_category11 = ServiceUserCategory.new('service_user_id' => service_user4.id, 'category_id' => category11.id)

service_user4_category11.save

service_user4_category1 = ServiceUserCategory.new('service_user_id' => service_user4.id, 'category_id' => category1.id)

service_user4_category1.save


service_user5_category2 = ServiceUserCategory.new('service_user_id' => service_user5.id, 'category_id' => category2.id)

service_user5_category2.save

service_user5_category3 = ServiceUserCategory.new('service_user_id' => service_user5.id, 'category_id' => category3.id)

service_user5_category3.save

service_user5_category4 = ServiceUserCategory.new('service_user_id' => service_user5.id, 'category_id' => category4.id)

service_user5_category4.save


service_user6_category5 = ServiceUserCategory.new('service_user_id' => service_user6.id, 'category_id' => category5.id)

service_user6_category5.save

service_user7_category6 = ServiceUserCategory.new('service_user_id' => service_user7.id, 'category_id' => category6.id)

service_user7_category6.save

service_user8_category7 = ServiceUserCategory.new('service_user_id' => service_user8.id, 'category_id' => category7.id)

service_user8_category7.save

service_user9_category8 = ServiceUserCategory.new('service_user_id' => service_user9.id, 'category_id' => category8.id)

service_user9_category8.save

service_user10_category9 = ServiceUserCategory.new('service_user_id' => service_user10.id, 'category_id' => category9.id)

service_user10_category9.save
