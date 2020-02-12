require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    subject {
      User.new( email: "mike3@dogs.com", 
                first_name: "Mike", 
                last_name: "Dogs", 
                password: "dogsrule", 
                password_confirmation: "dogsrule")
    }

    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without an email" do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a first_name" do
      subject.first_name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a last_name" do
      subject.last_name = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a password" do
      subject.password = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a password_confirmation" do
      subject.password_confirmation = nil
      expect(subject).to_not be_valid
    end

    it "is not valid if password and password_confirmation do not match" do
      subject.password = "dogsrule"
      subject.password_confirmation = "catsrule"
      expect(subject).to_not be_valid
    end

    it "is not valid if email is not unique" do
      subject.valid?

      user2 = User.new( email: "MIKE@dogs.com", 
        first_name: "Bob ", 
        last_name: "Cats", 
        password: "catsrule", 
        password_confirmation: "catsrule")

      expect(user2).to_not be_valid
    end

    it "is not valid is password is at least 8 characters" do
      subject.password = "1234"
      expect(subject).to_not be_valid
    end

  end

  describe '.authenticate_with_credentials' do
    user3 = User.new( email: "mike3@dogs.com", 
                first_name: "Mike", 
                last_name: "Dogs", 
                password: "dogsrule", 
                password_confirmation: "dogsrule")

    it "is valid with valid attributes" do
      expect(user3).to be_valid
    end

  end
  
end
