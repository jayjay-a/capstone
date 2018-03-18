# Initial Seeding. Most of the tables are done, but stuff like Projects, Jobs, Tasks, and Customers could have hundreds of rows each,
# so I'll figure that out

# Customer Statuses
CustomerStatus.create!([
                           { id: 1, customer_status_description: 'Current Customer' },
                           { id: 2, customer_status_description: 'No Longer Customer' },
                           { id: 3, customer_status_description: 'Prospective Customer' },
                           { id: 4, customer_status_description: 'Bad Customer' }
                       ])

# Employee Statuses
EmployeeStatus.create!([
                           { id: 1, employee_status_description: 'Current Employee' },
                           { id: 2, employee_status_description: 'Previous Employee' },
                           { id: 3, employee_status_description: 'Prospective Employee' }

                       ])

# Employee Types
EmployeeType.create!([
                         { id: 1, employee_type_description: 'Admin' },
                         { id: 2, employee_type_description: 'Data Entry' },
                         { id: 3, employee_type_description: 'Admin Assistant' }
                     ])

# Job Statuses
JobStatus.create!([
                      { id: 1, job_status_description: 'Waiting For Resources' },
                      { id: 2, job_status_description: 'Ongoing' },
                      { id: 3, job_status_description: 'Completed' }
                  ])

# Job Types
JobType.create!([
                    { id: 1, job_type_description: 'Woodwork' },
                    { id: 2, job_type_description: 'Ceiling Fix' },
                    { id: 3, job_type_description: 'Floor Fix' },
                    { id: 4, job_type_description: 'Paint Job' },
                    { id: 5, job_type_description: 'Roof Fix' },
                    { id: 6, job_type_description: 'Fill a Hole' },
                    { id: 7, job_type_description: 'Patch a Wall' },
                    { id: 8, job_type_description: 'Tear Down a Wall' },
                    { id: 9, job_type_description: 'Fix a Light Structure' }
                ])

# Materials
Material.create!([
                     { id: 1, material_description: 'Steel' },
                     { id: 2, material_description: '2x4 Wood Plank' },
                     { id: 3, material_description: 'PVC' },
                     { id: 4, material_description: 'Nails' },
                     { id: 5, material_description: 'Screws' },
                     { id: 6, material_description: 'Bolts' },
                     { id: 7, material_description: 'Nuts' },
                     { id: 8, material_description: 'Glue' },
                     { id: 9, material_description: 'Eggshell Paint' },
                     { id: 10, material_description: 'Blue Paint' },
                     { id: 11, material_description: 'Red Paint' },
                     { id: 12, material_description: 'White Paint' },
                     { id: 13, material_description: 'Green Paint' },
                     { id: 14, material_description: 'Yellow Paint' },
                     { id: 15, material_description: 'Black Paint' },
                     { id: 16, material_description: 'Paint Roller' },
                     { id: 17, material_description: 'Painters Tape' }
                 ])

# Project Statuses
ProjectStatus.create!([
                          { id: 1, project_status_description: 'Awaiting Bid Response' },
                          { id: 2, project_status_description: 'Bid Accepted' },
                          { id: 3, project_status_description: 'Bid Denied' },
                          { id: 4, project_status_description: 'Bid Deferred' },
                          { id: 5, project_status_description: 'Project Active' },
                          { id: 6, project_status_description: 'Project Completed' }
                      ])

# Project Types
ProjectType.create!([
                        { id: 1, project_type_description: 'Restaurant' },
                        { id: 2, project_type_description: 'Grocery Store' },
                        { id: 3, project_type_description: 'Hotel' },
                        { id: 4, project_type_description: 'School' }
                    ])

# Rental Equipment
RentalEquipment.create!([
                            { id: 1, rental_description: 'Jack Hammer' }
                        ])

# States
State.create!([
                  { id: 1, state_name: 'Alabama', state_abbrev: 'AL' },
                  { id: 2, state_name: 'Alaska', state_abbrev: 'AK' },
                  { id: 3, state_name: 'Arizona', state_abbrev: 'AZ' },
                  { id: 4, state_name: 'Arkansas', state_abbrev: 'AR' },
                  { id: 5, state_name: 'California', state_abbrev: 'CA' },
                  { id: 6, state_name: 'Colorado', state_abbrev: 'CO' },
                  { id: 7, state_name: 'Connecticut', state_abbrev: 'CT' },
                  { id: 8, state_name: 'Delaware', state_abbrev: 'DE' },
                  { id: 9, state_name: 'Florida', state_abbrev: 'FL' },
                  { id: 10, state_name: 'Georgia', state_abbrev: 'GA' },
                  { id: 11, state_name: 'Hawaii', state_abbrev: 'HI' },
                  { id: 12, state_name: 'Idaho', state_abbrev: 'ID' },
                  { id: 13, state_name: 'Illinois', state_abbrev: 'IL' },
                  { id: 14, state_name: 'Indiana', state_abbrev: 'IN' },
                  { id: 15, state_name: 'Iowa', state_abbrev: 'IA' },
                  { id: 16, state_name: 'Kansas', state_abbrev: 'KS' },
                  { id: 17, state_name: 'Kentucky', state_abbrev: 'KY' },
                  { id: 18, state_name: 'Louisiana', state_abbrev: 'LA' },
                  { id: 19, state_name: 'Maine', state_abbrev: 'ME' },
                  { id: 20, state_name: 'Maryland', state_abbrev: 'MD' },
                  { id: 21, state_name: 'Massachusetts', state_abbrev: 'MA' },
                  { id: 22, state_name: 'Michigan', state_abbrev: 'MI' },
                  { id: 23, state_name: 'Minnesota', state_abbrev: 'MN' },
                  { id: 24, state_name: 'Mississippi', state_abbrev: 'MS' },
                  { id: 25, state_name: 'Missouri', state_abbrev: 'MO' },
                  { id: 26, state_name: 'Montana', state_abbrev: 'MT' },
                  { id: 27, state_name: 'Nebraska', state_abbrev: 'NE' },
                  { id: 28, state_name: 'Nevada', state_abbrev: 'NV' },
                  { id: 29, state_name: 'New Hampshire', state_abbrev: 'NH' },
                  { id: 30, state_name: 'New Jersey', state_abbrev: 'NJ' },
                  { id: 31, state_name: 'New Mexico', state_abbrev: 'NM' },
                  { id: 32, state_name: 'New York', state_abbrev: 'NY' },
                  { id: 33, state_name: 'North Carolina', state_abbrev: 'NC' },
                  { id: 34, state_name: 'North Dakota', state_abbrev: 'ND' },
                  { id: 35, state_name: 'Ohio', state_abbrev: 'OH' },
                  { id: 36, state_name: 'Oklahoma', state_abbrev: 'OK' },
                  { id: 37, state_name: 'Oregon', state_abbrev: 'OR' },
                  { id: 38, state_name: 'Pennsylvania', state_abbrev: 'PA' },
                  { id: 39, state_name: 'Rhode Island', state_abbrev: 'RI' },
                  { id: 40, state_name: 'South Carolina', state_abbrev: 'SC' },
                  { id: 41, state_name: 'South Dakota', state_abbrev: 'SD' },
                  { id: 42, state_name: 'Tennessee', state_abbrev: 'TN' },
                  { id: 43, state_name: 'Texas', state_abbrev: 'TX' },
                  { id: 44, state_name: 'Utah', state_abbrev: 'UT' },
                  { id: 45, state_name: 'Vermont', state_abbrev: 'VT' },
                  { id: 46, state_name: 'Virginia', state_abbrev: 'VA' },
                  { id: 47, state_name: 'Washington', state_abbrev: 'WA' },
                  { id: 48, state_name: 'West Virgina', state_abbrev: 'WV' },
                  { id: 49, state_name: 'Wisconsin', state_abbrev: 'WI' },
                  { id: 50, state_name: 'Wyoming', state_abbrev: 'WY' },
                  { id: 51, state_name: 'District of Columbia', state_abbrev: 'DC' },
                  { id: 52, state_name: 'Puerto Rico', state_abbrev: 'PR' }
              ])

# Subcontractor Statuses
SubcontractorStatus.create!([
                                { id: 1, subcontractor_status_description: 'Active' },
                                { id: 2, subcontractor_status_description: 'Terminated' },
                                { id: 3, subcontractor_status_description: 'Temporary' }
                            ])

# Task Statuses
TaskStatus.create!([
                       { id: 1, task_status_description: 'Active' },
                       { id: 2, task_status_description: 'Waiting for another Task to finish' },
                       { id: 3, task_status_description: 'Completed' }
                   ])

# Customers
Customer.create!([
                     { id: 1, state_id: 43, customer_status_id: 1, customer_name: 'Olive Garden', customer_branch: '1862', customer_address_1: '22503 N US Hwy 281 Bldg 1 San Antonio, 78258', customer_address_2: '', string: '', customer_rep_name_1: 'Julius C. Huck', customer_rep_name_2: 'Daniel Johnson', customer_rep_phone_1: '(210)-481-9964', customer_rep_phone_2: '', customer_rep_email_1: 'OliveGarden1862@Darden.com', customer_rep_email_2: '' }
                 ])

# Employees
Employee.create!([
                     { id: 1, employee_status_id: 1, employee_type_id: 1, state_id: 43, first_name: 'Alex', last_name: 'Garay', join_date: '2002-08-20', dismiss_date: '' },
                     { id: 2, employee_status_id: 1, employee_type_id: 1, state_id: 43, first_name: 'April', last_name: 'Garay', join_date: '2002-08-20', dismiss_date: '' },
                     { id: 3, employee_status_id: 1, employee_type_id: 1, state_id: 43, first_name: 'Mary', last_name: 'Castro', join_date: '2012-02-17', dismiss_date: '' },
                     { id: 4, employee_status_id: 1, employee_type_id: 3, state_id: 43, first_name: 'Carlos', last_name: 'Contreras', join_date: '2018-01-03', dismiss_date: '' },
                     { id: 5, employee_status_id: 1, employee_type_id: 2, state_id: 43, first_name: 'Data', last_name: 'Entry', join_date: '2018-02-04', dismiss_date: '' }

                 ])

# Projects
Project.create!([
                    { id: 1, customer_id: 1, project_status_id: 6, project_type_id: 1, project_start_date: '2013-04-21', project_end_date: '2013-05-10', bid_submit_date: '2013-04-19', bid_material_cost: '$1,166.94', bid_cost_of_labor: '$2,633.34', bid_cost_of_permits: '', bid_equipment_rental: '', bid_freight: '', tax_rate: '8.25%', bid_amount: '$4113.80' },
                    { id: 2, customer_id: 1, project_status_id: 6, project_type_id: 1, project_start_date: '2013-05-21', project_end_date: '2013-06-10', bid_submit_date: '2013-05-19', bid_material_cost: '$4,215.06', bid_cost_of_labor: '$5,151.74', bid_cost_of_permits: '', bid_equipment_rental: '$550.00', bid_freight: '', tax_rate: '8.25%', bid_amount: '$10,734.930' }

                ])

# Material Lists
MaterialList.create!([
                         { id: 1, project_id: 1, material_id: 9, unit_price: '$25.99', quantity: '2' },
                         { id: 2, project_id: 1, material_id: 16, unit_price: '$3.99', quantity: '3' },
                         { id: 3, project_id: 1, material_id: 17, unit_price: '$2.99', quantity: '1' }
                     ])

# Project Notes
ProjectNote.create!([
                        { id: 1, project_id: 1, project_notes: 'Cannot start working until 2013-05-05', project_note_date: '2013-04-21', note_owner: 'April Garay' }
                    ])

# Rental Lists
RentalList.create!([
                       { id: 1, project_id: 2, rental_equipment_id: 1, rental_price: '$550.00', cost_frequency: 'by week' }
                   ])

# Subcontractors
Subcontractor.create!([
                          { id: 1, subcontractor_status_id: 1, subcontractor_name: 'Fernando Alfaro', subcontractor_phone: '(281)-555-5555', subcontractor_email: 'AlfaroFernando@gmail.com', company: 'Four Men Foreman' },
                          { id: 2, subcontractor_status_id: 1, subcontractor_name: 'Ivan Latorre', subcontractor_phone: '(713)-555-5555', subcontractor_email: 'LatorreIvan@gmail.com', company: 'Four Men Foreman' },
                          { id: 3, subcontractor_status_id: 1, subcontractor_name: 'Isaac Vargas', subcontractor_phone: '(832)-555-5555', subcontractor_email: 'VargasIsaac@gmail.com', company: 'Four Men Foreman' },
                          { id: 4, subcontractor_status_id: 1, subcontractor_name: 'Mario Monsivais', subcontractor_phone: '(346)-555-5555', subcontractor_email: 'MonsivaisMario@gmail.com', company: 'Four Men Foreman' }
                      ])

# Jobs
Job.create!([
                { id: 1, project_id: 1, job_type_id: 4, job_status_id: 1, job_start_date: '2013-05-05', job_end_date: '2013-05-10' }
            ])

# Job Notes
JobNote.create!([
                    { id: 1, job_id: 1, job_notes: "Make sure you you're using our eggshell paint, NOT WHITE", job_notes_owner: 'April Garay', job_notes_date: '2013-05-05' }
                ])

# Tasks
Task.create!([
                 { id: 1, job_id: 1, task_status_id: 3, task_start_date: '2013-05-24', task_end_date: '2013-05-27', task_description: 'Inner Wall Repair' }
             ])

# Task Notes
TaskNote.create!([
                     { id: 1, task_id: 1, task_notes: "1. Remove approximately 28ln ft of 3\" x 12' trim under tile at bar on first and second booth
                 2. Remove trim at table 315 (9\" x 12' & 4\" x 12')
                 3. Remove window sill at table 315
                 4. Remove booths
                 5. Open Wall
                 6. water test exterior wall & window to see where water is entering
                 7. Paint inside wall & studs with oil base kilz to prevent humidity
                 8. install water membrane
                 9. Install 4 ft of concrete board @ bottom of wall
                 10. Install plywood
                 11. Tape & Float
                 12. Install, stain, & varnish new wall & window trim - seal back of wood to prevent from warping
                 13. Install booths", task_note_owner: 'Alex Garay', task_note_date: '2013-05-23' },
                     { id: 2, task_id: 1, task_notes: "1. Remove and replace header trim on vestibule doors & secure the closers.
                 2. Repair nail pops at the first booth in the bar", task_note_owner: 'Alex Garay', task_note_date: '2013-05-23' }
                 ])

# Assignments
Assignment.create!([
                       { id: 1, subcontractor_id: 1, task_id: 1, employee_id: 1, assignment_date: '2013-05-05' }
                   ])

# Users - gotta wait until login is fully functional, I do declare
# User.create!([

#             ])
