require 'test_helper'

class VisitDecoratorTest < Draper::TestCase
describe VisitDecorator do

  let(:visitimage)  { 'John'  }
  let(:visitissue)  { 'Smith' }

  let(:visit) { FactoryGirl.build(:visit, 
                                 visitimage: visitimage, 
                                 visitissue: visitissue) }
  
  let(:decorator) { visit.decorate }

  describe '.visitfullname' do

    #...

    context 'with a first and last name' do

      it 'should return the full name' do
        expect(decorator.visitfull_name).to eq("#{ visitimage } #{ visitissue }")
      end
    end

    context 'without a first or last name' do

      before do
        visit.visitimage = ''
        visit.visitissue = ''
      end

      it 'should return no name provided' do
        expect(decorator.visitfull_name).to eq('No name provided.')
      end
    end

    # ...

  end
end
end