circuit Counter :
  module Counter :
    input clock : Clock
    input reset : UInt<1>
    output io : { out : UInt<2>, flip ena : UInt<1>, flip clr : UInt<1>}
  
    reg tmp : UInt<2>, clock with :
      reset => (reset, UInt<2>("h0")) @[Counter.scala 13:26]
    node _T = bits(reset, 0, 0) @[Counter.scala 15:14]
    when _T : @[Counter.scala 15:22]
      tmp <= UInt<1>("h0") @[Counter.scala 16:9]
    else :
      node _T_1 = add(tmp, UInt<1>("h1")) @[Counter.scala 18:61]
      node _T_2 = tail(_T_1, 1) @[Counter.scala 18:61]
      node _T_3 = mux(io.ena, _T_2, tmp) @[Mux.scala 98:16]
      node _T_4 = mux(io.clr, UInt<1>("h0"), _T_3) @[Mux.scala 98:16]
      tmp <= _T_4 @[Counter.scala 18:9]
    io.out <= tmp @[Counter.scala 21:10]
