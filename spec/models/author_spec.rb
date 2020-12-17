require 'rails_helper'

RSpec.describe Author, type: :model do
 
    subject { described_class.new }

describe 'validations' do 
    
    describe 'validations' do 
    it 'is valid with attributes' do 
      subject.first_name = "Demian"
      subject.last_name= "Sims"
      expect(subject).to be_valid
    end

    it 'is not valid without first name' do 
      subject.first_name = nil
      expect(subject).to_not be_valid 
    end

    it 'is not valid without last name' do 
      subject.last_name = nil
      expect(subject).to_not be_valid 
    end

   describe 'associations' do 
    it { should have_many(:books)}
   end 

end
end