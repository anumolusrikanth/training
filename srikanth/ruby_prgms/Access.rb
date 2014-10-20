#!/usr/bin/env ruby
class Access
  def name(names)
    puts "names"
  end
  private :name
  def new1(word)
    puts "word"
  end
  protected :new1
end
  class Second < Access
    puts names
    puts self.names
    puts word
    puts self.word
  end
  Access.new.name(sri)
  Access.new.new1(srikanth)
  