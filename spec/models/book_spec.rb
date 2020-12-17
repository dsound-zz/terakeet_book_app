require 'rails_helper'

RSpec.describe Book, type: :model do
   subject { described_class.new }

  describe 'validations' do 
    it 'is valid with attributes' do 
      subject.title = "Anything"
      subject.author_id = 1
      subject.publisher_id = 1
      expect(subject).to be_valid
    end

    it 'is not valid without title' do 
      subject.title = nil
      expect(subject).to_not be_valid 
    end

    it 'is not valid without author_id' do 
      subject.author_id = nil
      expect(subject).to_not be_valid 
    end

    it 'is not valid without publisher_id' do 
      subject.publisher_id = nil
      expect(subject).to_not be_valid 
    end

   describe 'associations' do 
    it { should belong_to(:publisher)}
    it { should belong_to(:author)}
   end 

  end
end
