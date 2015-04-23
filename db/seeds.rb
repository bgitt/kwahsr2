# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r1 = Role.create({name: "Student", description: "Can read items"})
r2 = Role.create({name: "Instructor", description: "Can read and create items. Can update and destroy own items"})
r3 = Role.create({name: "Admin", description: "Can perform any CRUD operation on any resource"})
 
u1 = User.create({email: "sally@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u2 = User.create({email: "sue@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u3 = User.create({email: "kev@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u4 = User.create({email: "jack@example.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r3.id})

c1 = College.create({name: "College of Engineering"})
c2 = College.create({name: "Tippie College of Business"})
c3 = College.create({name: "College of Liberal Arts and Science"})

d1 = Department.create({name: "ECE", number: 55})
d2 = Department.create({name: "CS", number: 22})

co1 = Course.create({name: "Database Systems", location: "MLH"})

b1 = Book.create({title: "Harry Potter", author: "J.K. Rowling", publisher: "Harper Collins", location: "Main Library"})