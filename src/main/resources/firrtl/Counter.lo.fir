circuit Counter :
  module Counter :
    input clock : Clock
    input reset : UInt<1>
    output io_out : UInt<2>
    input io_ena : UInt<1>
    input io_clr : UInt<1>
  
    reg tmp : UInt<2>, clock with :
      reset => (UInt<1>("h0"), tmp) @[Counter.scala 13:26]
    node _T = bits(reset, 0, 0) @[Counter.scala 15:14]
    node _T_1 = add(tmp, UInt<1>("h1")) @[Counter.scala 18:61]
    node _T_2 = tail(_T_1, 1) @[Counter.scala 18:61]
    node _T_3 = mux(io_ena, _T_2, tmp) @[Mux.scala 98:16]
    node _T_4 = mux(io_clr, UInt<1>("h0"), _T_3) @[Mux.scala 98:16]
    node _GEN_0 = mux(_T, UInt<1>("h0"), _T_4) @[Counter.scala 15:22]
    io_out <= tmp @[Counter.scala 21:10]
    tmp <= mux(reset, UInt<2>("h0"), _GEN_0) @[Counter.scala 16:9 Counter.scala 18:9]
