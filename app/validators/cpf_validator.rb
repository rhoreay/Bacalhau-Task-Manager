class CpfValidator < ActiveModel::Validator 
  def validate(record)
    unless CPF.valid?(record.cpf)
      record.errors.add(:cpf, :invalid, message: "is not a valid CPF")
    end
  end
end