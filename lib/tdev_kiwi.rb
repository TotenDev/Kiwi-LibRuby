# tdev_kiwi.rb — Kiwi
# today is 7/11/12, it is now 7:21 PM
# created by mtrovilho
# see LICENSE for details
# 
# special thanks to Peter Cooper (@peterc) for
# the great gist (https://gist.github.com/2582673)
# that helped me a lot!

require 'fiddle'
require 'tdev_kiwi/message'
require 'tdev_kiwi/version'

module TotenDev
  class Kiwi
    
    LIBC = DL.dlopen('libc.dylib')
    
    IPC_CREAT  = 001000
    IPC_EXCL   = 002000
    IPC_NOWAIT = 004000
    IPC_R      = 000400
    IPC_W      = 000200
    IPC_M      = 010000
    
    attr_accessor :name, :message
    
    def initialize(key_id, name = 'TDKiwi')
      @name = name
      @kiwi = self.class.get(key_id)
    end
    
    def self.get( key_id, msgflag = IPC_CREAT | IPC_R | IPC_W | IPC_M )
      key_id = key_id.to_i if key_id.is_a? String
      Fiddle::Function.new( LIBC['msgget'],
                            [Fiddle::TYPE_INT, Fiddle::TYPE_INT],
                            Fiddle::TYPE_INT )
                            .call( key_id, msgflag )
    end
    
    def send( msg = @message )
      wrapper = "#{@name}||#{msg.worker}||'#{msg.args}'"
      sender( "s:#{wrapper.length}:\"#{wrapper}\"" )
    end
    
    private
    def sender(msg = {}, flags = 0)
      msg = { msg: msg } if msg.is_a? String
      msg = { type: 1, msg: '' }.merge(msg)
      
      r = Fiddle::Function.new( LIBC['msgsnd'],
                                [ Fiddle::TYPE_INT,
                                  Fiddle::TYPE_VOIDP,
                                  Fiddle::TYPE_INT,
                                  Fiddle::TYPE_INT ],
                                Fiddle::TYPE_INT )
                                .call(@kiwi,
                                      [msg[:type]].pack('Q') + msg[:msg],
                                      msg[:msg].length + 1,
                                      flags)
      r == -1 ? false : r
    end
    
  end
end