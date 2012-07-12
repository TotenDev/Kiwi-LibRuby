require 'spec_helper'

describe TotenDev::Kiwi do
  
  before :each do
    @kiwi = TotenDev::Kiwi.new nil, 'MyQueueID'
    @kiwi.message = TotenDev::Message.new '/usr/local/test.rb', 'the_arg'
  end
  
  describe "#new" do
    it "takes two parameters and returns a Kiwi object" do
        @kiwi.should be_an_instance_of TotenDev::Kiwi
    end
  end
  
  describe "#queue_id" do
    it "returns the correct queue_id" do
        @kiwi.queue_id.should eql 'MyQueueID'
    end
  end
  
  describe "#message" do
    it "returns an instance of Message" do
        @kiwi.message.should be_an_instance_of TotenDev::Message
    end
  end
  
end