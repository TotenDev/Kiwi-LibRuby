# message.rb — Kiwi
# today is 7/11/12, it is now 7:13 PM
# created by mtrovilho
# see LICENSE for details

module TotenDev
  class Message
    attr_accessor :worker, :args
    
    def initialize(worker = "", args = "")
      @worker = worker
      @args = args
    end
  end
end