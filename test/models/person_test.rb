require "test_helper"

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "cant save a invalid CPF" do
    person = Person.new(name: "alexander", cpf:"03861744250", email: "alexander@gmail.com")
    assert_not person.save, "saved a person with invalid cpf"
  end

  test "cant save a invalid email" do 
    person = Person.new(name: "alexander", cpf: "73282982003", email: "invalid_email")
    assert_not person.save, "saved a person with invalid email"
  end

  test "cant save person without name" do 
    person = Person.new(cpf: "73282982003", email: "alexander@gmail.com")
    assert_not person.save, "saved a person without name"
  end

  test "cant save person without email" do
    person = Person.new(name: "alexander", cpf: "73282982003")
    assert_not person.save, "saved a person without email"
  end

  test "cant save person without cpf" do
    person = Person.new(name: "alexander", email: "alexander@gmail.com")
    assert_not person.save, "saved a person without cpf"
  end
end
