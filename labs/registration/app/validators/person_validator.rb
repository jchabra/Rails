class PersonValidator < ActiveModel::Validator
  def validate(record)
  	if (record.state != "NY") && (record.age < 18) #validating multiple properties at the same time
  		record.errors[:base] << "must be from NY and be 18"
  	end
  end
end