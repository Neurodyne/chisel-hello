circuit Regbuffer :
  module Regbuffer :
    input clock : Clock
    input reset : UInt<1>
    input io_din : UInt<1>
    output io_dout : UInt<1>
  
    reg _T : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T) @[Regbuffer.scala 11:21]
    io_dout <= _T @[Regbuffer.scala 11:11]
    _T <= io_din @[Regbuffer.scala 11:21]
