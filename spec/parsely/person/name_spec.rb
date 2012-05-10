require 'spec_helper'
require 'parsely/person/name'

describe Parsely::Person::Name do

  describe '#original' do
    it 'should be the unaltered version of the initialized name' do
      name = "BlahBlah A. BlahBlah II"
      Parsely::Person::Name.new(name).original.should == name
    end
  end
  
  describe '#sanitized' do
    it 'should remove any illegal charaters' do
      Parsely::Person::Name.new("aZ1/&'`!@$#%^*()_+=[]{}|\:;""").sanitized.should == "aZ1/&'"
    end
  end
  
  context 'given a name with the format "First Last"' do
    let!(:name)   { 'George Washington' }
    let!(:parser) { Parsely::Person::Name.new(name) }
  
    describe '#name' do
    end
    
    describe '#first' do
    end
    
    describe '#middle' do
    end
    
    describe '#last' do
    end
    
    describe '#titles' do
    end
    
    describe '#suffixes' do
    end
  end
end