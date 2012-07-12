require 'spec_helper'

describe TotenDev::Message do
  
  before :each do
    @message = TotenDev::Message.new '/usr/local/test.rb', 'the_arg'
  end
  
  describe "#new" do
    it "takes two parameters and returns a Message object" do
        @message.should be_an_instance_of TotenDev::Message
    end
  end
  
  describe "#worker" do
    it "returns the correct worker" do
        @message.worker should eql '/usr/local/test.rb'
    end
  end
  
  describe "#args" do
    it "returns the correct argument" do
        @message.args should eql 'the_arg'
    end
  end
  
end