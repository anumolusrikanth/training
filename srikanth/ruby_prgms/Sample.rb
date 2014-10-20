#!/usr/bin/env ruby
class Sample
  #@@persons=0
  #attr_accessor :persons
  def initialize(number)
    number=@@persons+1
    puts "#number"
  end
  #code
end
N=Sample.new(1)
#N.persons=1