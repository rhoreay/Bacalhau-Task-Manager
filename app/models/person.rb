class Person < ApplicationRecord
  # name cant be null
  validates :name, presence: true

  # cpf cant be null and need to be valid (it will call app/validators/cpf_validator.rb)
  validates :cpf, presence: true, cpf: true

  # email cant be null and need to be valid (it uses builtin RegEx to check email)
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  before_validation :format_cpf

  # associate Person with Tasks trough Assingments
  has_many :assignments, dependent: :destroy 
  has_many :tasks, through: :assignments

  def format_cpf
    return if cpf.blank?

    only_numbers = cpf.gsub(/\D/, '')

    if only_numbers.length == 11 
      self.cpf = only_numbers.gsub(/(\d{3})(\d{3})(\d{3})(\d{2})/, '\1.\2.\3-\4')
    end
  end 

end
