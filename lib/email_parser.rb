class EmailAddressParser
    attr_accessor :email
    
    def initialize(email_string)
      @email = email_string
    end
  
    def parse
      email_list = @email.split(/[,\s]/)
      email_list.uniq.reject {|x| x.empty?}
    end
  end
  
  
  emails = "avi@test.com, arel@test.com test@avi.com, test@arel.com"
  EmailAddressParser.new(emails).parse
