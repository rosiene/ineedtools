# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
frank = User.create( name: 'frank', email: 'frank@ex.com', zipcode: '3081CG', phone: '0657483728', password: 'abcd1234' )
