# Customer Statuses
CustomerStatus.create!([
                         { customer_status_description: 'Active Customer' },
                         { customer_status_description: 'Inactive Customer' },
                         { customer_status_description: 'Potential Customer' },
                         { customer_status_description: 'Bad Customer' }
                       ])

# Employee Statuses
EmployeeStatus.create!([
                         { employee_status_description: 'Active Employee' },
                         { employee_status_description: 'Inactive Employee' }
                       ])

# Employee Types
EmployeeType.create!([
                       { employee_type_description: 'Admin' },
                       { employee_type_description: 'Data Entry' },
                       { employee_type_description: 'Admin Assistant' }
                     ])

# Job Statuses
JobStatus.create!([
                    { job_status_description: 'Waiting For Resources' },
                    { job_status_description: 'Ongoing' },
                    { job_status_description: 'Completed' }
                  ])

# Job Types
JobType.create!([
                  { job_type_description: 'Flooring' },
                  { job_type_description: 'Walls' },
                  { job_type_description: 'Equipment' },
                  { job_type_description: 'Furniture' },
                  { job_type_description: 'Wood Work' },
                  { job_type_description: 'Miscellaneous' },
                  { job_type_description: 'Restroom Remodel' },
                  { job_type_description: 'Ceiling Tile' },
                  { job_type_description: 'Paint Job' }
                ])

# Materials
Material.create!([
                   { material_description: 'Rustic Bay 6 in. x 24 in. Glazed Porcelain Wall Tile' },
                   { material_description: 'MSI Bergamo Gris 12 in. x 24 in. Glazed Ceramic Wall Tile' },
                   { material_description: 'Jeffrey Court Carrara 3 in. x 6 in. x 8 mm Honed Marble Wall Tile' },
                   { material_description: 'Alaska Gray Ledger Panel 6 in. x 24 in. Natural Marble Wall Tile' },
                   { material_description: 'MSI Classico Oak Ledger Panel 6 in. x 24 in. Natural Marble Wall Tile' },
                   { material_description: 'TrafficMASTER Sanibel White 12 in. x 12 in. Ceramic White Floor Tile' },
                   { material_description: 'Merola Tile Provence Blanco 7-3/4 in. x 7-3/4 in. Ceramic Floor Tile' },
                   { material_description: 'Merola Tile Avila Cotto 12-1/2 in. x 12-1/2 in. Ceramic Floor Tile' },
                   { material_description: 'Emser Newberry Grafite 7.87 in. x 7.87 in. Porcelain Floor Tile' },
                   { material_description: 'Catalina Canyon Noce 12 in. x 12 in. Porcelain Floor Tile' },
                   { material_description: '4 ft. x 1-1/2 in. Fire-Rated Cross Tee' },
                   { material_description: 'DONN Brand 12 ft. x 1-16/25 in. Ceiling Suspension System Main Tees' },
                   { material_description: 'Ceilingmax 64 sq. ft. White Surface Mount Ceiling Grid Kit' },
                   { material_description: 'USG Ceilings Fifth Avenue 2 ft. x 4 ft. Lay-in Ceiling Tile' },
                   { material_description: 'Genesis 2 ft. x 2 ft. Icon Relief Black Ceiling Tile' },
                   { material_description: '18-Port CCTV Power Supply Box' },
                   { material_description: '4 in. 30.3 cu. in. Metallic Square Box' },
                   { material_description: 'Carlon 1-Gang 20 cu. in. Non-Metallic Old Work Outlet Box' },
                   { material_description: 'RACO 2-1/2 in. Deep Switch Boxes Gangable with Conduit KO\'s' },
                   { material_description: 'Southwire 250 ft. 14/2 Solid Romex SIMpull CU NM-B W/G Wire' },
                   { material_description: 'Philips 4 ft. T8 32-Watt Daylight (6500K) ALTO Linear Fluorescent Light Bulb' },
                   { material_description: 'EcoSmart 100-Watt Equivalent A19 Non-Dimmable LED Light Bulb, Daylight' },
                   { material_description: 'EcoSmart 40-Watt Equivalent B11 Clear Blunt Tip Decorative LED Light Bulb, Soft White' },
                   { material_description: 'Euri Lighting 50W Equivalent Warm White (2700) MR16 Dimmable MCOB LED Flood Light Bulb' },
                   { material_description: 'Philips 60W Equivalent Soft White Frosted G25 Globe LED Energy Star Light Bulb' },
                   { material_description: 'QuietCool Classic CL-6400 Advanced Direct Drive Whole House Fan with Dampers' },
                   { material_description: 'QuietCool Energy Saver ES-3100 Advanced Direct Drive Whole House Fan with Dampers' },
                   { material_description: 'Battic Door Energy Conservation Products1600 CFM R-50 Insulated Whole House Fan' },
                   { material_description: 'QuietCool Smart 2830 CFM Power Gable Mount Attic Fan' },
                   { material_description: '6 in. Round Wall Vent' },
                   { material_description: '2 in. x 10 ft. 280-PSI Schedule 40 PVC DWV Plain End Pipe' },
                   { material_description: '2 in. x 2 in. PVC DWV 90-Degree Hub x Hub Long-Turn Elbow' },
                   { material_description: 'Apollo 1/2 in. Brass PEX Barb 90° Elbow' },
                   { material_description: 'Kingston Brass Classic Decorative 1-1/4 in. Brass P-Trap and Vessel Sink without Overflow Hole Set in Satin Nickel' },
                   { material_description: 'VPC 1-1/2 in. x 2 ft. Plastic ABS Pipe' },
                   { material_description: '1-1/2 in. ABS P-Trap' },
                   { material_description: 'Sioux Chief TKO 3 in. x 4 in. Black ABS Adjustable Metal Ring Hub x Inside Fit Closet Flange' },
                   { material_description: 'BEHR MARQUEE #MQ3-57 Siberian Ice Paint' },
                   { material_description: 'BEHR Premium Plus#N510-1 Silver Shadow Paint' },
                   { material_description: 'BEHR Premium Plus#540D-7 Deep Blue Sea Zero VOC Interior Paint' },
                   { material_description: 'Sheetrock UltraLight 1/2 in. x 4 ft. x 8 ft. Gypsum Board' },
                   { material_description: 'SHEETROCK BrandUltraLight Mold Tough 1/2 in. x 4 ft. x 8 ft. Gypsum Board' },
                   { material_description: 'Gold Bond High Strength Lite 1/2 in. x 4 ft. x 8 ft. Gypsum Board' },
                   { material_description: 'ToughRock DensShield 1/2 in. x 2.7 ft. x 5 ft. Glass Mat Tile Backer' },
                   { material_description: 'James HardieHardieBacker 1/4 in. x 4 ft. x 8 ft. Cement Backerboard' },
                   { material_description: 'Ceilume Soniguard 24 in. x 24 in. Drop Ceiling Acoustic/Thermal Insulation' },
                   { material_description: 'Quikrete 60 lb. Concrete Mix' },
                   { material_description: 'Quikrete 10 lb. Hydraulic Water-Stop Cement' },
                   { material_description: '2 in. x 4 in. x 8 ft. #2 Ground Contact Pressure-Treated Lumber' },
                   { material_description: '23/32 in. x 4 ft. x 8 ft. RTD Sheathing Syp' }
                 ])

# Project Statuses
ProjectStatus.create!([
                        { project_status_description: 'Awaiting Bid Response' },
                        { project_status_description: 'Bid Accepted' },
                        { project_status_description: 'Bid Denied' },
                        { project_status_description: 'Bid Deferred' },
                        { project_status_description: 'Project Active' },
                        { project_status_description: 'Project Completed' }
                      ])

# Project Types
ProjectType.create!([
                      { project_type_description: 'Restaurant' },
                      { project_type_description: 'Commercial' },
                      { project_type_description: 'Residential' },
                      { project_type_description: 'Government' }
                    ])

# Rental Equipment
RentalEquipment.create!([
                          { rental_description: 'Wheel Tractor' },
                          { rental_description: 'Backacter' },
                          { rental_description: 'Arm' },
                          { rental_description: 'Slewing Boom' },
                          { rental_description: 'Boom Cylinder' },
                          { rental_description: 'Tractor' },
                          { rental_description: 'Apron Cylinder' },
                          { rental_description: 'Scraper Bowl' },
                          { rental_description: 'Hammer' },
                          { rental_description: 'Motor Graders' },
                          { rental_description: 'Crawler Loaders' },
                          { rental_description: 'Trenchers' },
                          { rental_description: 'Block Saws' },
                          { rental_description: 'Power Cutters' },
                          { rental_description: 'Cut-Off Saws' },
                          { rental_description: 'Concrete Rigs' },
                          { rental_description: 'Cutting Wheels' },
                          { rental_description: 'Rammers' },
                          { rental_description: 'Plate Compactors' },
                          { rental_description: 'Rollers' },
                          { rental_description: 'Ladders' },
                          { rental_description: 'Forklift' },
                          { rental_description: 'Breaker' },
                          { rental_description: 'Drifter' },
                          { rental_description: 'Rig Mat' }
                        ])

# States
State.create!([
                { state_name: 'Alabama', state_abbrev: 'AL' },
                { state_name: 'Alaska', state_abbrev: 'AK' },
                { state_name: 'Arizona', state_abbrev: 'AZ' },
                { state_name: 'Arkansas', state_abbrev: 'AR' },
                { state_name: 'California', state_abbrev: 'CA' },
                { state_name: 'Colorado', state_abbrev: 'CO' },
                { state_name: 'Connecticut', state_abbrev: 'CT' },
                { state_name: 'Delaware', state_abbrev: 'DE' },
                { state_name: 'Florida', state_abbrev: 'FL' },
                { state_name: 'Georgia', state_abbrev: 'GA' },
                { state_name: 'Hawaii', state_abbrev: 'HI' },
                { state_name: 'Idaho', state_abbrev: 'ID' },
                { state_name: 'Illinois', state_abbrev: 'IL' },
                { state_name: 'Indiana', state_abbrev: 'IN' },
                { state_name: 'Iowa', state_abbrev: 'IA' },
                { state_name: 'Kansas', state_abbrev: 'KS' },
                { state_name: 'Kentucky', state_abbrev: 'KY' },
                { state_name: 'Louisiana', state_abbrev: 'LA' },
                { state_name: 'Maine', state_abbrev: 'ME' },
                { state_name: 'Maryland', state_abbrev: 'MD' },
                { state_name: 'Massachusetts', state_abbrev: 'MA' },
                { state_name: 'Michigan', state_abbrev: 'MI' },
                { state_name: 'Minnesota', state_abbrev: 'MN' },
                { state_name: 'Mississippi', state_abbrev: 'MS' },
                { state_name: 'Missouri', state_abbrev: 'MO' },
                { state_name: 'Montana', state_abbrev: 'MT' },
                { state_name: 'Nebraska', state_abbrev: 'NE' },
                { state_name: 'Nevada', state_abbrev: 'NV' },
                { state_name: 'New Hampshire', state_abbrev: 'NH' },
                { state_name: 'New Jersey', state_abbrev: 'NJ' },
                { state_name: 'New Mexico', state_abbrev: 'NM' },
                { state_name: 'New York', state_abbrev: 'NY' },
                { state_name: 'North Carolina', state_abbrev: 'NC' },
                { state_name: 'North Dakota', state_abbrev: 'ND' },
                { state_name: 'Ohio', state_abbrev: 'OH' },
                { state_name: 'Oklahoma', state_abbrev: 'OK' },
                { state_name: 'Oregon', state_abbrev: 'OR' },
                { state_name: 'Pennsylvania', state_abbrev: 'PA' },
                { state_name: 'Rhode Island', state_abbrev: 'RI' },
                { state_name: 'South Carolina', state_abbrev: 'SC' },
                { state_name: 'South Dakota', state_abbrev: 'SD' },
                { state_name: 'Tennessee', state_abbrev: 'TN' },
                { state_name: 'Texas', state_abbrev: 'TX' },
                { state_name: 'Utah', state_abbrev: 'UT' },
                { state_name: 'Vermont', state_abbrev: 'VT' },
                { state_name: 'Virginia', state_abbrev: 'VA' },
                { state_name: 'Washington', state_abbrev: 'WA' },
                { state_name: 'West Virgina', state_abbrev: 'WV' },
                { state_name: 'Wisconsin', state_abbrev: 'WI' },
                { state_name: 'Wyoming', state_abbrev: 'WY' },
                { state_name: 'District of Columbia', state_abbrev: 'DC' },
                { state_name: 'Puerto Rico', state_abbrev: 'PR' }
              ])

# Subcontractor Statuses
SubcontractorStatus.create!([
                              { subcontractor_status_description: 'Active' },
                              { subcontractor_status_description: 'Terminated' },
                              { subcontractor_status_description: 'Inactive' }
                            ])

# Task Statuses
TaskStatus.create!([
                     { task_status_description: 'In Progress' },
                     { task_status_description: 'Completed' },
                     { task_status_description: 'Not Started' }
                   ])

# Customers
Customer.create!([
                   { state_id: 43, customer_status_id: 1, customer_name: 'Olive Garden', customer_branch: '1862', customer_address_1: '22503 N US Hwy 281 Bldg 1 San Antonio, 78258', customer_address_2: '', customer_rep_name_1: 'Julius C. Huck', customer_rep_name_2: 'Daniel Johnson', customer_rep_phone_1: '(210)-481-9964', customer_rep_phone_2: '', customer_rep_email_1: 'OliveGarden1862@Darden.com', customer_rep_email_2: '' }
                 ])

# Employees
Employee.create!([
                   { employee_status_id: 1, employee_type_id: 1, state_id: 43, first_name: 'Alex', last_name: 'Garay', join_date: '2002-08-20', dismiss_date: '' },
                   { employee_status_id: 1, employee_type_id: 1, state_id: 43, first_name: 'April', last_name: 'Garay', join_date: '2002-08-20', dismiss_date: '' },
                   { employee_status_id: 1, employee_type_id: 1, state_id: 43, first_name: 'Mary', last_name: 'Castro', join_date: '2012-02-17', dismiss_date: '' },
                   { employee_status_id: 1, employee_type_id: 3, state_id: 43, first_name: 'Carlos', last_name: 'Contreras', join_date: '2018-01-03', dismiss_date: '' },
                   { employee_status_id: 1, employee_type_id: 2, state_id: 43, first_name: 'Data', last_name: 'Entry', join_date: '2018-02-04', dismiss_date: '' }
                 ])

# Projects
Project.create!([
                  { customer_id: 1, project_status_id: 6, project_type_id: 1, project_start_date: '2013-04-21', project_end_date: '2013-05-10', bid_submit_date: '2013-04-19', bid_material_cost: '1166.94', bid_cost_of_labor: '2633.34', bid_cost_of_permits: '', bid_equipment_rental: '', bid_freight: '', tax_rate: '8.25%', bid_amount: '4113.80' },
                  { customer_id: 1, project_status_id: 6, project_type_id: 1, project_start_date: '2013-05-21', project_end_date: '2013-06-10', bid_submit_date: '2013-05-19', bid_material_cost: '4215.06', bid_cost_of_labor: '5151.74', bid_cost_of_permits: '', bid_equipment_rental: '550.00', bid_freight: '', tax_rate: '8.25%', bid_amount: '10734.93' }

                ])

# Material Lists
MaterialList.create!([
                       { project_id: 1, material_id: 1, unit_price: '1.89`', quantity: '250' },
                       { project_id: 2, material_id: 2, unit_price: '0.99', quantity: '523' },
                       { project_id: 3, material_id: 3, unit_price: '6.98', quantity: '103' },
                       { project_id: 4, material_id: 4, unit_price: '5.94', quantity: '97' },
                       { project_id: 5, material_id: 5, unit_price: '7.64', quantity: '125' },
                       { project_id: 6, material_id: 6, unit_price: '0.49', quantity: '780' },
                       { project_id: 7, material_id: 7, unit_price: '6.06', quantity: '283' },
                       { project_id: 8, material_id: 8, unit_price: '5.04', quantity: '185' },
                       { project_id: 9, material_id: 9, unit_price: '11.36', quantity: '368' },
                       { project_id: 10, material_id: 10, unit_price: '0.49', quantity: '650' },
                       { project_id: 11, material_id: 11, unit_price: '146.09', quantity: '5' },
                       { project_id: 12, material_id: 12, unit_price: '120.75', quantity: '5' },
                       { project_id: 13, material_id: 13, unit_price: '69.95', quantity: '20' },
                       { project_id: 14, material_id: 14, unit_price: '0.54', quantity: '400' },
                       { project_id: 15, material_id: 15, unit_price: '3.12', quantity: '400' },
                       { project_id: 16, material_id: 16, unit_price: '66.87', quantity: '1' },
                       { project_id: 17, material_id: 17, unit_price: '1.04', quantity: '25' },
                       { project_id: 18, material_id: 18, unit_price: '2.14', quantity: '25' },
                       { project_id: 19, material_id: 19, unit_price: '2.29', quantity: '20' },
                       { project_id: 20, material_id: 20, unit_price: '69.73', quantity: '3' },
                       { project_id: 21, material_id: 21, unit_price: '4.29', quantity: '25' },
                       { project_id: 22, material_id: 22, unit_price: '10.29', quantity: '35' },
                       { project_id: 23, material_id: 23, unit_price: '1.09', quantity: '50' },
                       { project_id: 24, material_id: 24, unit_price: '6.25', quantity: '30' },
                       { project_id: 25, material_id: 25, unit_price: '4.25', quantity: '25' },
                       { project_id: 26, material_id: 26, unit_price: '1335', quantity: '1' },
                       { project_id: 27, material_id: 27, unit_price: '985.25', quantity: '2' },
                       { project_id: 28, material_id: 28, unit_price: '1008.25', quantity: '4' },
                       { project_id: 29, material_id: 29, unit_price: '253.25', quantity: '2' },
                       { project_id: 30, material_id: 30, unit_price: '18.98', quantity: '10' },
                       { project_id: 31, material_id: 31, unit_price: '8.31', quantity: '18' },
                       { project_id: 32, material_id: 32, unit_price: '2.89', quantity: '20' },
                       { project_id: 33, material_id: 33, unit_price: '18.36', quantity: '10' },
                       { project_id: 34, material_id: 34, unit_price: '209.8', quantity: '3' },
                       { project_id: 35, material_id: 35, unit_price: '2.95', quantity: '11' },
                       { project_id: 36, material_id: 36, unit_price: '3.99', quantity: '4' },
                       { project_id: 37, material_id: 37, unit_price: '11.69', quantity: '4' },
                       { project_id: 38, material_id: 38, unit_price: '199', quantity: '2' },
                       { project_id: 39, material_id: 39, unit_price: '135', quantity: '4' },
                       { project_id: 40, material_id: 40, unit_price: '28.98', quantity: '12' },
                       { project_id: 41, material_id: 41, unit_price: '7.96', quantity: '38' },
                       { project_id: 42, material_id: 42, unit_price: '13.62', quantity: '35' },
                       { project_id: 43, material_id: 43, unit_price: '7.98', quantity: '18' },
                       { project_id: 44, material_id: 44, unit_price: '9.98', quantity: '10' },
                       { project_id: 45, material_id: 45, unit_price: '21.97', quantity: '18' },
                       { project_id: 46, material_id: 46, unit_price: '1.79', quantity: '220' },
                       { project_id: 47, material_id: 47, unit_price: '2.95', quantity: '35' },
                       { project_id: 48, material_id: 48, unit_price: '7.29', quantity: '4' },
                       { project_id: 49, material_id: 49, unit_price: '3.98', quantity: '40' },
                       { project_id: 50, material_id: 50, unit_price: '22.98', quantity: '20' }
                     ])

# Project Notes
ProjectNote.create!([
                      { project_id: 1, project_notes: 'Cannot start working until 2013-05-05', project_note_date: '2013-04-21', note_owner: 'April Garay' }
                    ])

# Rental Lists
RentalList.create!([
                     { project_id: 4, rental_equipment_id: 1, rental_price: '450', cont_frequency: 'by week' },
                     { project_id: 4, rental_equipment_id: 2, rental_price: '325', cont_frequency: 'by week' },
                     { project_id: 6, rental_equipment_id: 3, rental_price: '350', cont_frequency: 'by week' },
                     { project_id: 6, rental_equipment_id: 4, rental_price: '200', cont_frequency: 'by week' },
                     { project_id: 7, rental_equipment_id: 5, rental_price: '85', cont_frequency: 'by hour' },
                     { project_id: 7, rental_equipment_id: 6, rental_price: '300', cont_frequency: 'by week' },
                     { project_id: 9, rental_equipment_id: 7, rental_price: '45', cont_frequency: 'by hour' },
                     { project_id: 13, rental_equipment_id: 8, rental_price: '9.95', cont_frequency: 'by day' },
                     { project_id: 15, rental_equipment_id: 9, rental_price: '4.95', cont_frequency: 'by day' },
                     { project_id: 18, rental_equipment_id: 10, rental_price: '15.95', cont_frequency: 'by day' },
                     { project_id: 18, rental_equipment_id: 11, rental_price: '49.5', cont_frequency: 'by day' },
                     { project_id: 21, rental_equipment_id: 12, rental_price: '85.5', cont_frequency: 'by day' },
                     { project_id: 22, rental_equipment_id: 13, rental_price: '12.95', cont_frequency: 'by hour' },
                     { project_id: 22, rental_equipment_id: 14, rental_price: '13.95', cont_frequency: 'by hour' },
                     { project_id: 23, rental_equipment_id: 15, rental_price: '19.95', cont_frequency: 'by day' },
                     { project_id: 24, rental_equipment_id: 16, rental_price: '99.95', cont_frequency: 'by day' },
                     { project_id: 25, rental_equipment_id: 17, rental_price: '14.95', cont_frequency: 'by hour' },
                     { project_id: 25, rental_equipment_id: 18, rental_price: '19.95', cont_frequency: 'by day' },
                     { project_id: 30, rental_equipment_id: 19, rental_price: '25.49', cont_frequency: 'by day' },
                     { project_id: 30, rental_equipment_id: 20, rental_price: '4.95', cont_frequency: 'by day' },
                     { project_id: 32, rental_equipment_id: 21, rental_price: '9.95', cont_frequency: 'by day' },
                     { project_id: 33, rental_equipment_id: 22, rental_price: '295', cont_frequency: 'by week' },
                     { project_id: 36, rental_equipment_id: 23, rental_price: '49.95', cont_frequency: 'by day' },
                     { project_id: 47, rental_equipment_id: 24, rental_price: '15.95', cont_frequency: 'by hour' },
                     { project_id: 47, rental_equipment_id: 25, rental_price: '2.95', cont_frequency: 'by hour' }
                   ])

# Subcontractors
Subcontractor.create!([
                        { subcontractor_status_id: 2, subcontractor_name: 'Kessie Mcguire	Mcguire Western Construction, LLC', subcontractor_phone: '(294) 536-8845', subcontractor_email: 'Kessie.Mcguire@MWC.com', company: 'Subcontractors International' },
                        { subcontractor_status_id: 2, subcontractor_name: 'Gretchen Sargent	Sargent Construction Group, LLC', subcontractor_phone: '(309) 577-5877', subcontractor_email: 'Gretchen.Sargent@SCG.net', company: 'Subcontractors International' },
                        { subcontractor_status_id: 3, subcontractor_name: 'Regan Franks	Franks Construction Group, LP', subcontractor_phone: '(784) 741-3266', subcontractor_email: 'Regan.Franks@FCG.net', company: 'Frank\'s Subcontractors' },
                        { subcontractor_status_id: 1, subcontractor_name: 'Alea Anderson	Endeaors Unlimited, INC.', subcontractor_phone: '(378) 891-3511', subcontractor_email: 'Alea.Anderson@EU.com', company: 'Frank\'s Subcontractors' },
                        { subcontractor_status_id: 1, subcontractor_name: 'Eden Thornton	Eden Construction Company', subcontractor_phone: '(792) 992-2259', subcontractor_email: 'Eden.Thornton@EC.com', company: 'Subcontractors International' },
                        { subcontractor_status_id: 1, subcontractor_name: 'Yardley Mueller	Mueller Building Company', subcontractor_phone: '(870) 843-5441', subcontractor_email: 'Yardley.Mueller@MB.net', company: 'Frank\'s Subcontractors' },
                        { subcontractor_status_id: 2, subcontractor_name: 'Lawrence Mckay	McKay Industrial Construction, LLC', subcontractor_phone: '(310) 227-8465', subcontractor_email: 'Lawrence.Mckay@MKIC.com', company: 'Frank\'s Subcontractors' },
                        { subcontractor_status_id: 3, subcontractor_name: 'Dustin Wilkins	Wilkins Construction', subcontractor_phone: '(453) 468-9884', subcontractor_email: 'Dustin.Wilkins@W.net', company: 'Frank\'s Subcontractors' },
                        { subcontractor_status_id: 2, subcontractor_name: 'Tamekah Carpenter	Carpenter\'s Company, LLC', subcontractor_phone: '(291) 230-1952', subcontractor_email: 'Tamekah.Carpenter@CC.com', company: 'Subcontractors International' },
                        { subcontractor_status_id: 2, subcontractor_name: 'Grace Barnett	Barnett Constructions, LP', subcontractor_phone: '(865) 617-3331', subcontractor_email: 'Grace.Barnett@BC.com', company: 'Frank\'s Subcontractors' },
                        { subcontractor_status_id: 2, subcontractor_name: 'Brennan Justice	Grunley Constructions, INC', subcontractor_phone: '(219) 439-2448', subcontractor_email: 'Brennan.Justice@GC.net', company: 'Subcontractors International' },
                        { subcontractor_status_id: 1, subcontractor_name: 'Deacon Sandoval	Sandoval Constructions, LP', subcontractor_phone: '(942) 433-2439', subcontractor_email: 'Deacon.Sandoval@SC.com', company: 'Frank\'s Subcontractors' },
                        { subcontractor_status_id: 3, subcontractor_name: 'Fay Rodriquez	Great Build Constructions, LLC', subcontractor_phone: '(787) 353-8448', subcontractor_email: 'Fay.Rodriquez@GBC.net', company: 'Frank\'s Subcontractors' },
                        { subcontractor_status_id: 2, subcontractor_name: 'Ahmed Hammond	Building Blocks Company, LP', subcontractor_phone: '(510) 721-0061', subcontractor_email: 'Ahmed.Hammond@BBC.com', company: 'Subcontractors International' },
                        { subcontractor_status_id: 1, subcontractor_name: 'Maia Carson	Carson Construction, INC', subcontractor_phone: '(273) 604-4250', subcontractor_email: 'Maia.Carson@CC.com', company: 'Frank\'s Subcontractors' },
                        { subcontractor_status_id: 3, subcontractor_name: 'Keely Barlow	Barlow NorthWestern Builders, LP', subcontractor_phone: '(247) 635-7435', subcontractor_email: 'Keely.Barlow@BNWB.net', company: 'Subcontractors International' },
                        { subcontractor_status_id: 2, subcontractor_name: 'Elvis Newton	Newton Builders, LLC', subcontractor_phone: '(586) 711-9908', subcontractor_email: 'Elvis.Newton@NB.com', company: 'Frank\'s Subcontractors' },
                        { subcontractor_status_id: 1, subcontractor_name: 'Nehru Dominguez	Brick By Brick Constructions, INC', subcontractor_phone: '(841) 570-5330', subcontractor_email: 'Nehru.Dominguez@BBBC.com', company: 'Subcontractors International' },
                        { subcontractor_status_id: 2, subcontractor_name: 'Griffith Hurley	Hurley Constructions, LP', subcontractor_phone: '(746) 311-7510', subcontractor_email: 'Griffith.Hurley@HC.net', company: 'Subcontractors International' },
                        { subcontractor_status_id: 1, subcontractor_name: 'McKenzie Brown	Brown Brothers Company, INC', subcontractor_phone: '(436) 418-5356', subcontractor_email: 'McKenzie.Brown@BBC.net', company: 'Subcontractors International' },
                        { subcontractor_status_id: 3, subcontractor_name: 'Chadwick Macdonald	Mac Construction Company, LP', subcontractor_phone: '(207) 700-8918', subcontractor_email: 'Chadwick.Macdonald@constructors.com', company: 'Frank\'s Subcontractors' },
                        { subcontractor_status_id: 2, subcontractor_name: 'Idola Harmon	Harmon Builders, LLC', subcontractor_phone: '(504) 398-1897', subcontractor_email: 'Idola.Harmon@HB.com', company: 'Frank\'s Subcontractors' },
                        { subcontractor_status_id: 1, subcontractor_name: 'Raphael Farmer	Farmer Constructions, LP', subcontractor_phone: '(665) 341-3217', subcontractor_email: 'Raphael.Farmer@builders.com', company: 'Subcontractors International' },
                        { subcontractor_status_id: 2, subcontractor_name: 'Cyrus Langley	Langley Great Builds, LLC', subcontractor_phone: '(280) 733-7674', subcontractor_email: 'Cyrus.Langley@builders.com', company: 'Subcontractors International' },
                        { subcontractor_status_id: 2, subcontractor_name: 'Robin Rodriquez	Rodriguez Construction, LLC', subcontractor_phone: '(853) 531-1868', subcontractor_email: 'Robin.Rodriquez@constructors.com', company: 'Subcontractors International' }
                      ])

# Jobs
Job.create!([
              { project_id: 4, job_type_id: 1, job_status_id: 1, job_start_date: '2017-12-06', job_end_date: '2017-12-28' },
              { project_id: 4, job_type_id: 3, job_status_id: 1, job_start_date: '2018-01-06', job_end_date: '2018-01-25' },
              { project_id: 4, job_type_id: 5, job_status_id: 1, job_start_date: '2018-02-06', job_end_date: '2018-02-27' },
              { project_id: 6, job_type_id: 7, job_status_id: 2, job_start_date: '2017-12-15', job_end_date: '2017-12-30' },
              { project_id: 6, job_type_id: 9, job_status_id: 3, job_start_date: '2018-01-17', job_end_date: '2018-01-30' },
              { project_id: 6, job_type_id: 2, job_status_id: 3, job_start_date: '2018-02-01', job_end_date: '2018-02-19' },
              { project_id: 7, job_type_id: 4, job_status_id: 3, job_start_date: '2017-06-30', job_end_date: '2017-07-14' },
              { project_id: 7, job_type_id: 6, job_status_id: 1, job_start_date: '2017-07-15', job_end_date: '2017-08-14' },
              { project_id: 7, job_type_id: 8, job_status_id: 2, job_start_date: '2017-08-15', job_end_date: '2017-10-19' },
              { project_id: 9, job_type_id: 1, job_status_id: 1, job_start_date: '2017-10-25', job_end_date: '2017-11-24' },
              { project_id: 9, job_type_id: 3, job_status_id: 2, job_start_date: '2017-11-25', job_end_date: '2017-12-04' },
              { project_id: 9, job_type_id: 5, job_status_id: 3, job_start_date: '2017-12-05', job_end_date: '2018-01-02' },
              { project_id: 13, job_type_id: 7, job_status_id: 1, job_start_date: '2017-12-15', job_end_date: '2017-12-19' },
              { project_id: 13, job_type_id: 9, job_status_id: 2, job_start_date: '2017-12-20', job_end_date: '2017-12-23' },
              { project_id: 13, job_type_id: 2, job_status_id: 2, job_start_date: '2017-12-26', job_end_date: '2018-01-04' },
              { project_id: 15, job_type_id: 4, job_status_id: 1, job_start_date: '2018-01-10', job_end_date: '2018-01-29' },
              { project_id: 15, job_type_id: 6, job_status_id: 1, job_start_date: '2018-01-30', job_end_date: '2018-02-09' },
              { project_id: 15, job_type_id: 8, job_status_id: 1, job_start_date: '2018-02-10', job_end_date: '2018-02-19' },
              { project_id: 18, job_type_id: 1, job_status_id: 2, job_start_date: '2017-10-05', job_end_date: '2017-10-14' },
              { project_id: 18, job_type_id: 3, job_status_id: 3, job_start_date: '2017-10-15', job_end_date: '2017-10-29' },
              { project_id: 18, job_type_id: 5, job_status_id: 3, job_start_date: '2017-10-30', job_end_date: '2017-11-19' },
              { project_id: 21, job_type_id: 7, job_status_id: 3, job_start_date: '2018-01-10', job_end_date: '2018-01-24' },
              { project_id: 21, job_type_id: 9, job_status_id: 1, job_start_date: '2018-01-25', job_end_date: '2018-01-29' },
              { project_id: 21, job_type_id: 2, job_status_id: 2, job_start_date: '2018-01-30', job_end_date: '2018-02-14' },
              { project_id: 22, job_type_id: 4, job_status_id: 1, job_start_date: '2018-03-04', job_end_date: '2018-03-08' },
              { project_id: 22, job_type_id: 6, job_status_id: 2, job_start_date: '2018-03-08', job_end_date: '2018-03-11' },
              { project_id: 22, job_type_id: 8, job_status_id: 3, job_start_date: '2018-03-12', job_end_date: '2018-03-19' },
              { project_id: 23, job_type_id: 1, job_status_id: 1, job_start_date: '2018-02-09', job_end_date: '2018-02-14' },
              { project_id: 23, job_type_id: 3, job_status_id: 2, job_start_date: '2018-02-15', job_end_date: '2018-02-24' },
              { project_id: 23, job_type_id: 5, job_status_id: 2, job_start_date: '2018-02-25', job_end_date: '2018-02-27' },
              { project_id: 24, job_type_id: 7, job_status_id: 1, job_start_date: '2017-12-08', job_end_date: '2017-12-13' },
              { project_id: 24, job_type_id: 9, job_status_id: 1, job_start_date: '2017-12-14', job_end_date: '2012-12-17' },
              { project_id: 24, job_type_id: 2, job_status_id: 1, job_start_date: '2017-12-18', job_end_date: '2017-12-30' },
              { project_id: 25, job_type_id: 4, job_status_id: 2, job_start_date: '2018-03-19', job_end_date: '' },
              { project_id: 25, job_type_id: 6, job_status_id: 3, job_start_date: '2018-03-19', job_end_date: '' },
              { project_id: 25, job_type_id: 8, job_status_id: 3, job_start_date: '2018-03-19', job_end_date: '' },
              { project_id: 30, job_type_id: 1, job_status_id: 3, job_start_date: '2017-10-25', job_end_date: '2017-11-14' },
              { project_id: 30, job_type_id: 3, job_status_id: 1, job_start_date: '2017-11-15', job_end_date: '2017-12-04' },
              { project_id: 30, job_type_id: 5, job_status_id: 2, job_start_date: '2017-12-05', job_end_date: '2017-12-28' },
              { project_id: 32, job_type_id: 7, job_status_id: 1, job_start_date: '2018-02-27', job_end_date: '2018-03-04' },
              { project_id: 32, job_type_id: 9, job_status_id: 2, job_start_date: '2018-03-05', job_end_date: '2018-03-11' },
              { project_id: 32, job_type_id: 2, job_status_id: 3, job_start_date: '2018-03-12', job_end_date: '' },
              { project_id: 33, job_type_id: 4, job_status_id: 1, job_start_date: '2017-10-05', job_end_date: '2017-10-24' },
              { project_id: 33, job_type_id: 6, job_status_id: 2, job_start_date: '2017-10-25', job_end_date: '2017-11-01' },
              { project_id: 33, job_type_id: 8, job_status_id: 2, job_start_date: '2017-11-02', job_end_date: '2017-11-29' },
              { project_id: 36, job_type_id: 1, job_status_id: 1, job_start_date: '2018-01-15', job_end_date: '2018-02-09' },
              { project_id: 36, job_type_id: 3, job_status_id: 1, job_start_date: '2018-02-10', job_end_date: '2018-02-19' },
              { project_id: 36, job_type_id: 5, job_status_id: 1, job_start_date: '2018-01-20', job_end_date: '2018-02-04' },
              { project_id: 47, job_type_id: 7, job_status_id: 2, job_start_date: '2017-10-30', job_end_date: '2017-11-04' },
              { project_id: 47, job_type_id: 9, job_status_id: 3, job_start_date: '2017-11-05', job_end_date: '2017-11-14' }
            ])

# Job Notes
JobNote.create!([
                  { job_id: 2, job_notes: 'Scaffold must be rigid and sufficient to carry its own weight plus four times the maximum intended load without settling or displacement', job_notes_owner: 'April', job_notes_date: '2017-12-15' },
                  { job_id: 3, job_notes: 'Existing utility locations are approximate only, contact city before starting.', job_notes_owner: 'Mary', job_notes_date: '2018-03-02' },
                  { job_id: 3, job_notes: 'Make sure drainage lines, mail boxes, and irrigation systems are restored to their original condition', job_notes_owner: 'Alex', job_notes_date: '2017-05-21' },
                  { job_id: 4, job_notes: 'Get rid of all debris by the end of the day as per city restrictions', job_notes_owner: 'Mary', job_notes_date: '2018-03-07' },
                  { job_id: 4, job_notes: 'City inspector will visit tomorrow, make sure Alex is present on job site', job_notes_owner: 'Mary', job_notes_date: '2017-05-15' },
                  { job_id: 5, job_notes: 'Left wall in Section A is not suppose to be stripped', job_notes_owner: 'April', job_notes_date: '2017-06-08' },
                  { job_id: 7, job_notes: 'Clear all objects in section C to make sure there is enough room to work', job_notes_owner: 'April', job_notes_date: '2017-07-31' },
                  { job_id: 7, job_notes: 'Ceiling tiles must match the left wall per the requirement of the corporate', job_notes_owner: 'April', job_notes_date: '2017-03-18' },
                  { job_id: 9, job_notes: 'Floors need to be cleaned by the end of the day with a buffer', job_notes_owner: 'Mary', job_notes_date: '2017-09-28' },
                  { job_id: 12, job_notes: 'Use buffers to repolish the floor', job_notes_owner: 'Alex', job_notes_date: '2017-08-26' },
                  { job_id: 13, job_notes: 'Use wall paper provided by April on the contrast wall', job_notes_owner: 'Alex', job_notes_date: '2018-03-06' },
                  { job_id: 13, job_notes: 'After completion of this job, let the manager come in to inspect to make sure it is as they want.', job_notes_owner: 'April', job_notes_date: '2017-07-16' },
                  { job_id: 13, job_notes: 'All floors to be carpeted except section B.', job_notes_owner: 'Mary', job_notes_date: '2017-06-18' },
                  { job_id: 13, job_notes: 'Confirm with Manager about not carpeting section B only.', job_notes_owner: 'Alex', job_notes_date: '2017-11-13' },
                  { job_id: 15, job_notes: 'Corporate associates will be coming over tomorrow to check the status of work', job_notes_owner: 'Mary', job_notes_date: '2017-12-26' },
                  { job_id: 16, job_notes: 'New carpets will be delievered tomorrow. Tracking #1Z1244FF524112 UPS', job_notes_owner: 'Mary', job_notes_date: '2017-12-27' },
                  { job_id: 16, job_notes: 'Drainage pipe in the back room behind the main sink is rusted, needs immediated attention!', job_notes_owner: 'April', job_notes_date: '2017-06-18' },
                  { job_id: 17, job_notes: 'Contact 1-800-GOTJUNK to drop off a container by the restaurant', job_notes_owner: 'April', job_notes_date: '2017-08-26' },
                  { job_id: 18, job_notes: 'Make sure the glasses have embossed etching once they are recieved tomorrow.', job_notes_owner: 'April', job_notes_date: '2017-07-31' },
                  { job_id: 18, job_notes: 'Contact city to set an appointment for landmarking all utilities line.', job_notes_owner: 'Mary', job_notes_date: '2017-09-02' },
                  { job_id: 19, job_notes: 'The bi-sectional wall in the main room needs three shade of the blue (Octane, Butane, Methane) in that order.', job_notes_owner: 'Alex', job_notes_date: '2017-12-20' },
                  { job_id: 22, job_notes: 'The floor needs to be completely stripped by the end of day to stay on time for this project', job_notes_owner: 'Alex', job_notes_date: '2017-09-04' },
                  { job_id: 27, job_notes: 'Section C to use 60 watt daylight EcoSmart bulbs only', job_notes_owner: 'April', job_notes_date: '2018-03-12' },
                  { job_id: 28, job_notes: 'Section D to use track lights on left and right walls', job_notes_owner: 'Mary', job_notes_date: '2017-10-27' },
                  { job_id: 30, job_notes: 'Section A to use floresence tubes on the edges with provided brackets', job_notes_owner: 'Alex', job_notes_date: '2017-12-26' },
                  { job_id: 31, job_notes: 'The outside seating area have three chipped tiles that needs removal', job_notes_owner: ' Mary', job_notes_date: '2017-10-27' },
                  { job_id: 33, job_notes: 'All window treatments need to be taken down and the furniture completely cleared out', job_notes_owner: 'Mary', job_notes_date: '2017-06-07' },
                  { job_id: 33, job_notes: 'Remove all the doors opening, base molding and the protruding nails from the floor', job_notes_owner: 'April', job_notes_date: '2017-06-28' },
                  { job_id: 34, job_notes: 'Tape over electrical outlets and other jacks, they are not to be replaced.', job_notes_owner: 'April', job_notes_date: '2018-02-22' },
                  { job_id: 35, job_notes: 'Corner room labelled as Section C need mahogany hardwood floors', job_notes_owner: 'April', job_notes_date: '2018-01-15' },
                  { job_id: 35, job_notes: 'Main room labelled as Section A is marked for cedar shade hardwood floors.', job_notes_owner: 'Mary', job_notes_date: '2018-03-12' },
                  { job_id: 35, job_notes: 'The contractor will sand the old finish off the floors, repair any damaged areas and ensure all wood dust is cleared from the floors.', job_notes_owner: 'Alex', job_notes_date: '2018-01-25' },
                  { job_id: 36, job_notes: 'Staining is required on the pillers and should be applied in two coats at most', job_notes_owner: 'Alex', job_notes_date: '2018-02-22' },
                  { job_id: 37, job_notes: 'The floor waxing machine will be available for the day only, make sure to use it in both rooms by the end of the day.', job_notes_owner: 'April', job_notes_date: '2018-01-31' },
                  { job_id: 37, job_notes: 'Apply the chemical stripper on the ceiling so it is ready by tomorrow to remove the popcorn', job_notes_owner: 'Mary', job_notes_date: '2018-01-30' },
                  { job_id: 37, job_notes: 'Run painter\'s tape on the wall around the ceiling along the walls and attach the 2-3 mil plastic sheeting to it', job_notes_owner: 'Alex', job_notes_date: '2017-12-27' },
                  { job_id: 38, job_notes: 'Use a floor scraper, or other wide bladed tool, to gently scrape away the popcorn texture.', job_notes_owner: 'Mary', job_notes_date: '2017-11-24' },
                  { job_id: 39, job_notes: 'Apply generous amounts of stripping solution with a mop and let it sit for approximately 10 minutes to loosen the floor finish', job_notes_owner: 'Mary', job_notes_date: '2017-12-27' },
                  { job_id: 39, job_notes: 'All solution tanks, mops, mop buckets, squeegees and hoses must be thoroughly rinsed and cleaned out.', job_notes_owner: 'April', job_notes_date: ' 2017-06-06' },
                  { job_id: 42, job_notes: 'Test the outlet with the circuit tester to be sure the power is off.', job_notes_owner: 'April', job_notes_date: '2017-05-26' },
                  { job_id: 43, job_notes: 'If there are two pairs of wires entering the receptacle\'s box, separate the wires from the box into two pairs of one white wire and one black wire.', job_notes_owner: 'April', job_notes_date: '2017-06-18' },
                  { job_id: 43, job_notes: 'Verify the zoning for the property and all parking requirements have been met.', job_notes_owner: 'Mary', job_notes_date: '2018-01-22' },
                  { job_id: 44, job_notes: 'Toilet rooms shall be finished with a glazed, washable surface to at least the level of splash', job_notes_owner: 'Alex', job_notes_date: '2017-07-17' },
                  { job_id: 45, job_notes: 'Make sure utility service lines, and pipes are elevated above floor level to facilitate cleaning.', job_notes_owner: 'Alex', job_notes_date: '2017-04-28' },
                  { job_id: 46, job_notes: 'DO NOT use wood as a structural material for the refrigeration unit.', job_notes_owner: 'April', job_notes_date: ' 2017-11-14' },
                  { job_id: 47, job_notes: 'Plumbing waste receptors should be installed outside the walk in refrigeration unit.', job_notes_owner: ' Mary', job_notes_date: '2018-01-30' },
                  { job_id: 48, job_notes: 'Use the sheilded lights for the hood as per city requirements.', job_notes_owner: 'Alex', job_notes_date: '2017-07-31' },
                  { job_id: 49, job_notes: 'Final insection is delayed three days, this job has to wait.', job_notes_owner: 'Mary', job_notes_date: '2017-08-01' },
                  { job_id: 50, job_notes: 'Only the front counter is to have granite marble top, rear counter can use the formica provided.', job_notes_owner: 'Mary', job_notes_date: '2018-01-30' },
                  { job_id: 50, job_notes: 'The back splash in the kitchen area must be atleast 2 feet tall', job_notes_owner: 'April', job_notes_date: ' 2018-01-30' }
                ])

# Tasks
Task.create!([
               { job_id: 1, task_status_id:  3, task_start_date: '2017-12-06', task_end_date: '2017-12-27', task_description: 'Scrub the wall' },
               { job_id: 2, task_status_id:  3, task_start_date: '2018-01-06', task_end_date: '2018-01-20', task_description: 'Install new tile to the wall' },
               { job_id: 3, task_status_id:  3, task_start_date: '2018-02-07', task_end_date: '2018-02-27', task_description: 'Paint the wall' },
               { job_id: 4, task_status_id:  3, task_start_date: '2017-12-20', task_end_date: '2017-12-29', task_description: 'Install new floor mat' },
               { job_id: 5, task_status_id:  3, task_start_date: '2018-01-17', task_end_date: '2018-01-29', task_description: 'Replace and fixed the damaged area aound the Main gate' },
               { job_id: 6, task_status_id:  3, task_start_date: '2018-02-05', task_end_date: '2018-02-16', task_description: 'Install new lock system' },
               { job_id: 7, task_status_id:  3, task_start_date: '2017-06-30', task_end_date: '2017-07-07', task_description: 'Repair pipe systems' },
               { job_id: 8, task_status_id:  3, task_start_date: '2017-07-17', task_end_date: '2017-08-14', task_description: 'Relace defective pipe' },
               { job_id: 9, task_status_id:  3, task_start_date: '2017-08-17', task_end_date: '2017-10-11', task_description: 'Repair plumbing systems' },
               { job_id: 10, task_status_id:  3, task_start_date: '2017-10-27', task_end_date: '2017-11-22', task_description: 'Repair nail pops at the first booth in the bar' },
               { job_id: 11, task_status_id:  3, task_start_date: '2017-11-27', task_end_date: '2017-12-04', task_description: 'Remove and Replace header trim on vestibule doors' },
               { job_id: 12, task_status_id:  3, task_start_date: '2017-12-12', task_end_date: '2017-12-31', task_description: 'Secure the closers' },
               { job_id: 13, task_status_id:  3, task_start_date: '2017-12-15', task_end_date: '2017-12-19', task_description: 'Install plywood' },
               { job_id: 14, task_status_id:  3, task_start_date: '2017-12-20', task_end_date: '2017-12-22', task_description: 'Install, stain, and varnish new wall' },
               { job_id: 15, task_status_id:  3, task_start_date: '2017-12-26', task_end_date: '2018-01-04', task_description: 'Install, stain, and varnish new window' },
               { job_id: 16, task_status_id:  3, task_start_date: '2018-01-10', task_end_date: '2018-01-18', task_description: 'Tape and float' },
               { job_id: 17, task_status_id:  3, task_start_date: '2018-02-01', task_end_date: '2018-02-09', task_description: 'Open wall' },
               { job_id: 18, task_status_id:  3, task_start_date: '2018-02-10', task_end_date: '2018-02-19', task_description: 'Water test exterior wall and window to see where water is entering' },
               { job_id: 19, task_status_id:  3, task_start_date: '2017-10-07', task_end_date: '2017-10-13', task_description: 'Remove trim at the table' },
               { job_id: 20, task_status_id:  3, task_start_date: '2017-10-16', task_end_date: '2017-10-26', task_description: 'Remove trim under tile at the bar' },
               { job_id: 21, task_status_id:  3, task_start_date: '2017-10-30', task_end_date: '2017-11-16', task_description: 'Remove trim at the second booth' },
               { job_id: 22, task_status_id:  3, task_start_date: '2018-01-12', task_end_date: '2018-01-22', task_description: 'Paint inside wall' },
               { job_id: 23, task_status_id:  3, task_start_date: '2018-01-25', task_end_date: '2018-01-29', task_description: 'Studs inside wall with oil base kilz to prevent humidity' },
               { job_id: 24, task_status_id:  3, task_start_date: '2018-02-01', task_end_date: '2018-02-14', task_description: 'Paint outside wall' },
               { job_id: 25, task_status_id:  3, task_start_date: '2018-03-04', task_end_date: '2018-03-07', task_description: 'Install 4 ft concrete board at bottom of the wall' },
               { job_id: 26, task_status_id:  3, task_start_date: '2018-03-08', task_end_date: '2018-03-11', task_description: 'Trim -seal back of wood to prevent from wrapping' },
               { job_id: 27, task_status_id:  3, task_start_date: '2018-03-12', task_end_date: '2018-03-16', task_description: 'Install booths' },
               { job_id: 28, task_status_id:  3, task_start_date: '2018-02-09', task_end_date: '2018-02-14', task_description: 'Install new windows' },
               { job_id: 29, task_status_id:  3, task_start_date: '2018-02-15', task_end_date: '2018-02-22', task_description: 'Repair ceiling' },
               { job_id: 30, task_status_id:  3, task_start_date: '2018-02-25', task_end_date: '2018-02-27', task_description: 'Test ceiling for water leakage' },
               { job_id: 31, task_status_id:  3, task_start_date: '2017-12-08', task_end_date: '2017-12-12', task_description: 'Replace the Kicten burner' },
               { job_id: 32, task_status_id:  3, task_start_date: '2017-12-14', task_end_date: '2012-12-17', task_description: 'Build storage cabinet inside room' },
               { job_id: 33, task_status_id:  3, task_start_date: '2017-12-18', task_end_date: '2017-12-30', task_description: 'Repalce tile in dinning area' },
               { job_id: 34, task_status_id:  2, task_start_date: '2018-03-19', task_end_date: '', task_description: 'Install new lights in Kitchen' },
               { job_id: 35, task_status_id:  1, task_start_date: '2018-03-19', task_end_date: '', task_description: 'Replace wire across the hall' },
               { job_id: 36, task_status_id:  2, task_start_date: '2018-03-19', task_end_date: '', task_description: 'Install new fan in kitchen' },
               { job_id: 37, task_status_id:  3, task_start_date: '2017-10-25', task_end_date: '2017-11-08', task_description: 'Re-paint the ceiling' },
               { job_id: 38, task_status_id:  3, task_start_date: '2017-11-15', task_end_date: '2017-12-01', task_description: 'Replace counter top glass' },
               { job_id: 39, task_status_id:  3, task_start_date: '2017-12-06', task_end_date: '2017-12-28', task_description: 'Install lights pole' },
               { job_id: 40, task_status_id:  3, task_start_date: '2018-02-28', task_end_date: '2018-03-04', task_description: 'Paint parking spot' },
               { job_id: 41, task_status_id:  3, task_start_date: '2018-03-05', task_end_date: '2018-03-11', task_description: 'Replace glass window' },
               { job_id: 42, task_status_id:  2, task_start_date: '2018-03-12', task_end_date: '', task_description: 'Remove the oven and install new one' },
               { job_id: 43, task_status_id:  3, task_start_date: '2017-10-05', task_end_date: '2017-10-18', task_description: 'Re-design the counter top' },
               { job_id: 44, task_status_id:  3, task_start_date: '2017-10-25', task_end_date: '2017-11-01', task_description: 'Re-design the dinning hall' },
               { job_id: 45, task_status_id:  3, task_start_date: '2017-11-02', task_end_date: '2017-11-22', task_description: 'Build new cafeteria wall' },
               { job_id: 46, task_status_id:  3, task_start_date: '2018-01-19', task_end_date: '2018-02-09', task_description: 'Install new sinks inside the kitchen' },
               { job_id: 47, task_status_id:  3, task_start_date: '2018-02-10', task_end_date: '2018-02-19', task_description: 'Replace bathroom sinks' },
               { job_id: 48, task_status_id:  3, task_start_date: '2018-01-20', task_end_date: '2018-02-04', task_description: 'Fix cracks across the wall' },
               { job_id: 49, task_status_id:  3, task_start_date: '2017-10-30', task_end_date: '2017-11-04', task_description: 'Tint the window' },
               { job_id: 50, task_status_id:  3, task_start_date: '2017-11-07', task_end_date: '2017-11-14', task_description: 'Build new storage cabinet' }
             ])

# Task Notes
TaskNote.create!([
                   { task_id: 1, task_notes: 'Ask Alex to call the contractor', task_note_owner: 'April', task_note_date: '2017-12-08' },
                   { task_id: 2, task_notes: 'Task complete', task_note_owner: 'Mary', task_note_date: '2018-01-11' },
                   { task_id: 3, task_notes: 'New paint required', task_note_owner: 'Alex', task_note_date: '2018-02-07' },
                   { task_id: 4, task_notes: 'Floor mate is replaced', task_note_owner: 'Mary', task_note_date: '2017-12-26' },
                   { task_id: 5, task_notes: 'Need more nails', task_note_owner: 'April', task_note_date: '2018-01-19' },
                   { task_id: 6, task_notes: 'Lock system is damaged', task_note_owner: 'Alex', task_note_date: '2018-02-07' },
                   { task_id: 7, task_notes: 'Need different size pipe', task_note_owner: 'Mary', task_note_date: '2017-07-04' },
                   { task_id: 8, task_notes: 'Pipe has hole in it', task_note_owner: 'Mary', task_note_date: '2017-07-20' },
                   { task_id: 9, task_notes: 'Call Plumbers', task_note_owner: 'Alex', task_note_date: '2017-08-18' },
                   { task_id: 10, task_notes: 'Use different color of the booth', task_note_owner: 'Mary', task_note_date: '2017-11-02' },
                   { task_id: 11, task_notes: 'Task completed', task_note_owner: 'May', task_note_date: '2017-11-29' },
                   { task_id: 12, task_notes: 'Need to test the closures', task_note_owner: 'Alex', task_note_date: '2017-12-12' },
                   { task_id: 13, task_notes: 'Order more plywood', task_note_owner: 'Mary', task_note_date: '2017-12-15' },
                   { task_id: 14, task_notes: 'Check wall for leakage', task_note_owner: 'Mary', task_note_date: '2017-12-20' },
                   { task_id: 15, task_notes: 'Order wood for window', task_note_owner: 'Alex', task_note_date: '2018-01-03' },
                   { task_id: 16, task_notes: 'Notify Alex that the task is complete', task_note_owner: 'Mary', task_note_date: '2018-01-11' },
                   { task_id: 17, task_notes: 'Hire more contractors', task_note_owner: 'Alex', task_note_date: '2018-02-06' },
                   { task_id: 18, task_notes: 'Use tape to mark the leakage point', task_note_owner: 'Alex', task_note_date: '2018-02-10' },
                   { task_id: 19, task_notes: 'Clean area after removing the trim', task_note_owner: 'Mary', task_note_date: '2017-10-09' },
                   { task_id: 20, task_notes: 'Take Precaution while working under the bar area', task_note_owner: 'Mary', task_note_date: '2017-10-18' },
                   { task_id: 21, task_notes: 'Trim at second booth completed', task_note_owner: 'Alex', task_note_date: '2017-11-02' },
                   { task_id: 22, task_notes: 'Use bule and white paint on the wall', task_note_owner: 'Mary', task_note_date: '2018-01-19' },
                   { task_id: 23, task_notes: 'Use synthetic oil to prevent humidity', task_note_owner: 'Mary', task_note_date: '2018-01-25' },
                   { task_id: 24, task_notes: 'Scrub wall ', task_note_owner: '	Alex', task_note_date: '2018-02-07' },
                   { task_id: 25, task_notes: 'Concrete board will arrive on Monday', task_note_owner: 'Alex', task_note_date: '2018-03-04' },
                   { task_id: 26, task_notes: 'Use 2-ply wood', task_note_owner: '	Mary', task_note_date: '2018-03-08' },
                   { task_id: 27, task_notes: 'Order booths', task_note_owner: '	Alex', task_note_date: '2018-03-14' },
                   { task_id: 28, task_notes: 'Get glass windows', task_note_owner: '	Mary', task_note_date: '2018-02-09' },
                   { task_id: 29, task_notes: 'Estimate extra labor cost for ceiling', task_note_owner: 'Mary', task_note_date: '2018-02-16' },
                   { task_id: 30, task_notes: 'Test during the day', task_note_owner: 'Alex', task_note_date: '2018-02-25' },
                   { task_id: 31, task_notes: 'Pick-up kitchen burner from the warehouse', task_note_owner: 'April-', task_note_date: '2017-12-08' },
                   { task_id: 32, task_notes: 'Need 2 cabinet', task_note_owner: 'Mary', task_note_date: '2017-12-14' },
                   { task_id: 33, task_notes: 'Start work after midnight', task_note_owner: 'Alex', task_note_date: '2017-12-18' },
                   { task_id: 34, task_notes: 'Test light brightness at night', task_note_owner: 'Mary', task_note_date: '2018-03-19' },
                   { task_id: 35, task_notes: 'Call technician', task_note_owner: 'April', task_note_date: '2018-03-19' },
                   { task_id: 36, task_notes: 'Buy 2 more fan', task_note_owner: 'Alex', task_note_date: '2018-03-19' },
                   { task_id: 37, task_notes: 'Remove mold before painting', task_note_owner: 'Mary', task_note_date: '2017-10-28' },
                   { task_id: 38, task_notes: 'Order 5x10 size glass', task_note_owner: 'Mary', task_note_date: '2017-11-16' },
                   { task_id: 39, task_notes: 'Rent a crane to install pole', task_note_owner: 'Alex', task_note_date: '2017-12-27' },
                   { task_id: 40, task_notes: 'Powerwash parking lot before painting', task_note_owner: 'Mary', task_note_date: '2018-03-02' },
                   { task_id: 41, task_notes: 'Completed on Saturday', task_note_owner: 'Mary', task_note_date: '2018-03-07' },
                   { task_id: 42, task_notes: 'Pick-up Oven from the warehouse', task_note_owner: 'Alex', task_note_date: '2018-03-12' },
                   { task_id: 43, task_notes: 'Get the design approved before starting the work', task_note_owner: 'April', task_note_date: '2017-10-12' },
                   { task_id: 44, task_notes: 'Hire designer', task_note_owner: 'Mary', task_note_date: '2017-10-25' },
                   { task_id: 45, task_notes: 'Build a prototype', task_note_owner: 'Alex', task_note_date: '2017-11-09' },
                   { task_id: 46, task_notes: 'Meaure sink size', task_note_owner: 'Mary', task_note_date: '2018-01-25' },
                   { task_id: 47, task_notes: 'Use white color sink', task_note_owner: 'Alex', task_note_date: '2018-02-16' },
                   { task_id: 48, task_notes: 'Use wall fixer', task_note_owner: 'Alex', task_note_date: '2018-01-21' },
                   { task_id: 49, task_notes: 'Tint only to the exterior window', task_note_owner: 'April', task_note_date: '2017-10-30' },
                   { task_id: 50, task_notes: '4 Cabinet is needed', task_note_owner: 'Mary', task_note_date: '2017-11-11' }
                 ])

# Assignments
Assignment.create!([
                     { subcontractor_id: 2, task_id: 1, employee_id: 2, assignment_date: '2017-12-06' },
                     { subcontractor_id: 17, task_id: 2, employee_id: 4, assignment_date: '2018-01-06' },
                     { subcontractor_id: 20, task_id: 3, employee_id: 1, assignment_date: '2018-02-07' },
                     { subcontractor_id: 25, task_id: 4, employee_id: 4, assignment_date: '2017-12-20' },
                     { subcontractor_id: 4, task_id: 5, employee_id: 4, assignment_date: '2018-01-17' },
                     { subcontractor_id: 22, task_id: 6, employee_id: 4, assignment_date: '2018-02-05' },
                     { subcontractor_id: 16, task_id: 7, employee_id: 3, assignment_date: '2017-06-30' },
                     { subcontractor_id: 1, task_id: 8, employee_id: 1, assignment_date: '2017-07-17' },
                     { subcontractor_id: 19, task_id: 9, employee_id: 2, assignment_date: '2017-08-17' },
                     { subcontractor_id: 5, task_id: 10, employee_id: 3, assignment_date: '2017-10-27' },
                     { subcontractor_id: 14, task_id: 11, employee_id: 4, assignment_date: '2017-11-27' },
                     { subcontractor_id: 5, task_id: 12, employee_id: 2, assignment_date: '2017-12-12' },
                     { subcontractor_id: 21, task_id: 13, employee_id: 4, assignment_date: '2017-12-15' },
                     { subcontractor_id: 13, task_id: 14, employee_id: 3, assignment_date: '2017-12-20' },
                     { subcontractor_id: 7, task_id: 15, employee_id: 3, assignment_date: '2017-12-26' },
                     { subcontractor_id: 8, task_id: 16, employee_id: 2, assignment_date: '2018-01-10' },
                     { subcontractor_id: 18, task_id: 17, employee_id: 4, assignment_date: '2018-02-01' },
                     { subcontractor_id: 15, task_id: 18, employee_id: 2, assignment_date: '2018-02-10' },
                     { subcontractor_id: 15, task_id: 19, employee_id: 4, assignment_date: '2017-10-07' },
                     { subcontractor_id: 7, task_id:  20, employee_id: 1, assignment_date: '2017-10-16' },
                     { subcontractor_id: 2, task_id: 21, employee_id: 3, assignment_date: '2017-10-30' },
                     { subcontractor_id: 5, task_id: 22, employee_id: 1, assignment_date: '2018-01-12' },
                     { subcontractor_id: 25, task_id: 23, employee_id: 2, assignment_date: '2018-01-25' },
                     { subcontractor_id: 4, task_id: 24, employee_id: 3, assignment_date: '2018-02-01' },
                     { subcontractor_id: 4, task_id: 25, employee_id: 1, assignment_date: '2018-03-04' },
                     { subcontractor_id: 7, task_id: 26, employee_id: 3, assignment_date: '2018-03-08' },
                     { subcontractor_id: 16, task_id: 27, employee_id: 3, assignment_date: '2018-03-12' },
                     { subcontractor_id: 3, task_id: 28, employee_id: 4, assignment_date: '2018-02-09' },
                     { subcontractor_id: 7, task_id: 29, employee_id: 3, assignment_date: '2018-02-15' },
                     { subcontractor_id: 5, task_id: 30, employee_id: 1, assignment_date: '2018-02-25' },
                     { subcontractor_id: 8, task_id: 31, employee_id: 2, assignment_date: '2017-12-08' },
                     { subcontractor_id: 18, task_id: 32, employee_id: 2, assignment_date: '2017-12-14' },
                     { subcontractor_id: 5, task_id: 33, employee_id: 2, assignment_date: '2017-12-18' },
                     { subcontractor_id: 15, task_id: 34, employee_id: 1, assignment_date: '2018-03-19' },
                     { subcontractor_id: 23, task_id: 35, employee_id: 4, assignment_date: '2018-03-19' },
                     { subcontractor_id: 21, task_id: 36, employee_id: 3, assignment_date: '2018-03-19' },
                     { subcontractor_id: 8, task_id: 37, employee_id: 2, assignment_date: '2017-10-25' },
                     { subcontractor_id: 20, task_id: 38, employee_id: 4, assignment_date: '2017-11-15' },
                     { subcontractor_id: 10, task_id: 39, employee_id: 2, assignment_date: '2017-12-06' },
                     { subcontractor_id: 4, task_id: 40, employee_id: 3, assignment_date: '2018-02-28' },
                     { subcontractor_id: 21, task_id: 41, employee_id: 3, assignment_date: '2018-03-05' },
                     { subcontractor_id: 11, task_id: 42, employee_id: 2, assignment_date: '2018-03-12' },
                     { subcontractor_id: 19, task_id: 43, employee_id: 3, assignment_date: '2017-10-05' },
                     { subcontractor_id: 8, task_id: 44, employee_id: 1, assignment_date: '2017-10-25' },
                     { subcontractor_id: 2, task_id: 45, employee_id: 4, assignment_date: '2017-11-02' },
                     { subcontractor_id: 11, task_id: 46, employee_id: 4, assignment_date: '2018-01-19' },
                     { subcontractor_id: 21, task_id: 47, employee_id: 2, assignment_date: '2018-02-10' },
                     { subcontractor_id: 17, task_id: 48, employee_id: 3, assignment_date: '2018-01-20' },
                     { subcontractor_id: 13, task_id: 49, employee_id: 1, assignment_date: '2017-10-30' },
                     { subcontractor_id: 18, task_id: 50, employee_id: 2, assignment_date: '2017-11-07' }
                   ])

# Users
# User.create!([

#             ])
