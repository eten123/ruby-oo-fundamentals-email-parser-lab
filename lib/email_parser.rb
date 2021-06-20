# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

attr_accessor :email_adressess

    def initialize(email_adressess)
    @email_adressess = email_adressess
    end

    def parse
        email_array = @email_adressess.split(/[, ]/).uniq  #this calls splits method on the the email adresses and ensures no repeat with the .uniq
        email_array.reject! {|element| element.empty?} #removes empty spaces
        email_array
    end
end