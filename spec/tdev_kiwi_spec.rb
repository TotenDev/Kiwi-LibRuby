require 'spec_helper'

describe TotenDev::Kiwi do
  it 'kiwi response should not be false' do
    
    message = TotenDev::Message.new
    message.worker = '/usr/local/test.rb'
    message.args = 'the_arg'
    
    queue = TotenDev::Kiwi.new('9076')
    queue.name = 'TheTest'
    queue.message = message
    queue.send.should_not be_false
    
  end
end