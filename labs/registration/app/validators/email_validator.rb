class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value) #the email of the record (person) is the attribute and the value is the actual value that's coming in
  	if !value.include?('@')
  		record.errors[attribute] << "does not have an @ symbol" #any record that has an errors in the attribute, give it this error message
    end
  end
end