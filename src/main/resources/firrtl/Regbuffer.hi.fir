circuit Regbuffer :
  module Regbuffer :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip din : UInt<1>, dout : UInt<1>}
  
    reg _T : UInt<1>, clock with :
      reset => (UInt<1>("h0"), _T) @[Regbuffer.scala 11:21]
    _T <= io.din @[Regbuffer.scala 11:21]
    io.dout <= _T @[Regbuffer.scala 11:11]
