#!/usr/bin/env ruby
$global_var=3
Const ='welcome'
class Print
  @@no_of_persons=0
  def first_method
    puts "Hello : #$global_var"
    ::Const + 'Macys'
  end
  def initialize(id, firstname)
    @person_id=id
    @person_name=firstname
  end
  def display
    puts "Person ID is #@person_id"
    puts "Person Name is #@person_name"
  end
  def no_of_persons
    @@no_of_persons +=1
    puts "No of Persons : #@@no_of_persons"
  end
end  
obj=Print.new("1","Srikanth")
obj1=Print.new("2","Anumolu")
obj2=Print.new("4","Nisum")
obj.first_method
obj.display
obj1.display
obj2.display
obj.no_of_persons
obj1.no_of_persons
obj2.no_of_persons
puts Object::Const
"puts Print::Const"
