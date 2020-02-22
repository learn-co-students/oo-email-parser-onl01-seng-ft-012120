# Build a class EmailParser that accepts a string of unformatted emails. The parse method on the class should separate them into unique email addresses. The delimiters to support are commas (',') or whitespace (' ').

class EmailAddressParser
  attr_accessor :email_string 
  
  def initialize(email_string)
    @email_string = email_string 
  end   
  
  def parse 
    
    email_string.split.map do |line|
      line.split(',')
    end 
    .flatten.uniq #.flatten returns a one-dimensional array, .uniq removes duplicates
  end   
   
  
end   