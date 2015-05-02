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
u5 = User.create({email: "student@uiowa.edu", password: "student1", password_confirmation: "student1", role_id: r1.id})
u6 = User.create({email: "instructor@uiowa.edu", password: "instructor", password_confirmation: "instructor", role_id: r2.id})
u7 = User.create({email: "admin@uiowa.edu", password: "admin123", password_confirmation: "admin123", role_id: r3.id})

c1 = College.create({name: "College of Engineering"})
c2 = College.create({name: "Tippie College of Business"})
c3 = College.create({name: "College of Liberal Arts and Science"})

d1 = Department.create({name: "ECE", number: 55})
d2 = Department.create({name: "CS", number: 22})
d3 = Department.create({name: "Art", number: 1})
d4 = Department.create({name: "Math", number: 22})
d5 = Department.create({name: "Astronomy", number: 29})
d6 = Department.create({name: "Athletic Training", number: 27})
d7 = Department.create({name: "BME", number: 51})
d8 = Department.create({name: "Chemistry", number: 4})

co1 = Course.create({name: "Database Systems", location: "MLH"})
co2 = Course.create({name: "Engineering Math 1", location: "PC"})
co3 = Course.create({name: "Engineering Math 2", location: "PC"})
co4 = Course.create({name: "Engineering Math 3", location: "LC"})
co5 = Course.create({name: "Engineering Math 4", location: "MLH"})
co6 = Course.create({name: "Engineering Math 5", location: "MLH"})
co7 = Course.create({name: "Elementary Numerical Analysis", location: "MLH"})
co8 = Course.create({name: "Computer Science 2", location: "Van Allen"})
co9 = Course.create({name: "Engineering Problem SOlving 2", location: "SC"})
co10 = Course.create({name: "Computers in Engineering", location: "SC"})
co11 = Course.create({name: "Software Design", location: "SC"})


b1 = Book.create({title: "Harry Potter", author: "J.K. Rowling", publisher: "Harper Collins", location: "Main Library"})