# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

jerome = Contact.create(first_name: 'Jerome',
               last_name: 'Pratt',
               email: 'jerome@jerome.com',
               company_name: 'makers',
               job_title: 'CEO',
               telephone: 015532123243)
jerome.activities.create(description: "called for fun", activity_type:"call")

james = Contact.create(first_name: 'James',
               last_name: 'Caan',
               email: 'james@james.com',
               company_name: 'Dragons ltd',
               job_title: 'P.A',
               telephone: 38239822)

sarah = Contact.create(first_name: 'Sarah',
               last_name: 'Michaels',
               email: 'Sarah@sar.com',
               company_name: 'Sar-mad',
               job_title: 'CEO',
               telephone: 015532123243)

                
ella = Contact.create(first_name: 'Ella',
               last_name: 'Tartyle',
               email: 'ella@callers.com',
               company_name: 'callers academy',
               job_title: 'shot-caller',
               telephone: 015532123243)
