# Just waiting on the fake data, but everything works now yay

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
                   { material_description: 'Steel' },
                   { material_description: '2x4 Wood Plank' },
                   { material_description: 'PVC' },
                   { material_description: 'Nails' },
                   { material_description: 'Screws' },
                   { material_description: 'Bolts' },
                   { material_description: 'Nuts' },
                   { material_description: 'Glue' },
                   { material_description: 'Eggshell Paint' },
                   { material_description: 'Blue Paint' },
                   { material_description: 'Red Paint' },
                   { material_description: 'White Paint' },
                   { material_description: 'Green Paint' },
                   { material_description: 'Yellow Paint' },
                   { material_description: 'Black Paint' },
                   { material_description: 'Paint Roller' },
                   { material_description: 'Painters Tape' }
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
                          { rental_description: 'Jack Hammer' }
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
                  { customer_id: 1, project_status_id: 6, project_type_id: 1, project_start_date: '2013-04-21', project_end_date: '2013-05-10', bid_submit_date: '2013-04-19', bid_material_cost: '$1,166.94', bid_cost_of_labor: '$2,633.34', bid_cost_of_permits: '', bid_equipment_rental: '', bid_freight: '', tax_rate: '8.25%', bid_amount: '$4113.80' },
                  { customer_id: 1, project_status_id: 6, project_type_id: 1, project_start_date: '2013-05-21', project_end_date: '2013-06-10', bid_submit_date: '2013-05-19', bid_material_cost: '$4,215.06', bid_cost_of_labor: '$5,151.74', bid_cost_of_permits: '', bid_equipment_rental: '$550.00', bid_freight: '', tax_rate: '8.25%', bid_amount: '$10,734.930' }

                ])

# Material Lists
MaterialList.create!([
                       { project_id: 1, material_id: 9, unit_price: '$25.99', quantity: '2' },
                       { project_id: 1, material_id: 16, unit_price: '$3.99', quantity: '3' },
                       { project_id: 1, material_id: 17, unit_price: '$2.99', quantity: '1' }
                     ])

# Project Notes
ProjectNote.create!([
                      { project_id: 1, project_notes: 'Cannot start working until 2013-05-05', project_note_date: '2013-04-21', note_owner: 'April Garay' }
                    ])

# Subcontractors
Subcontractor.create!([
                        { subcontractor_status_id: 1, subcontractor_name: 'Fernando Alfaro', subcontractor_phone: '(281)-555-5555', subcontractor_email: 'AlfaroFernando@gmail.com', company: 'Four Men Foreman' },
                        { subcontractor_status_id: 1, subcontractor_name: 'Ivan Latorre', subcontractor_phone: '(713)-555-5555', subcontractor_email: 'LatorreIvan@gmail.com', company: 'Four Men Foreman' },
                        { subcontractor_status_id: 1, subcontractor_name: 'Isaac Vargas', subcontractor_phone: '(832)-555-5555', subcontractor_email: 'VargasIsaac@gmail.com', company: 'Four Men Foreman' },
                        { subcontractor_status_id: 1, subcontractor_name: 'Mario Monsivais', subcontractor_phone: '(346)-555-5555', subcontractor_email: 'MonsivaisMario@gmail.com', company: 'Four Men Foreman' }
                      ])

# Jobs
Job.create!([
              { project_id: 1, job_type_id: 4, job_status_id: 1, job_start_date: '2013-05-05', job_end_date: '2013-05-10' }
            ])

# Job Notes
JobNote.create!([
                  { job_id: 1, job_notes: "Make sure you you're using our eggshell paint, NOT WHITE", job_notes_owner: 'April Garay', job_notes_date: '2013-05-05' }
                ])

# Tasks
Task.create!([
               { job_id: 1, task_status_id: 3, task_start_date: '2013-05-24', task_end_date: '2013-05-27', task_description: 'Inner Wall Repair' }
             ])

# Task Notes
TaskNote.create!([
                   { task_id: 1, task_notes: "1. Remove approximately 28ln ft of 3\" x 12' trim under tile at bar on first and second booth
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
                   { task_id: 1, task_notes: "1. Remove and replace header trim on vestibule doors & secure the closers.
             2. Repair nail pops at the first booth in the bar", task_note_owner: 'Alex Garay', task_note_date: '2013-05-23' }
                 ])

# Assignments
Assignment.create!([
                     { subcontractor_id: 1, task_id: 1, employee_id: 1, assignment_date: '2013-05-05' }
                   ])

# Users
# User.create!([

#             ])
