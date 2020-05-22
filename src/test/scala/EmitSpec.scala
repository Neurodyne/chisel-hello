package firtest

import Helper._
import chisel3.stage.ChiselGeneratorAnnotation
import hello.emiter._
import hw._

import zio.test.Assertion._
import zio.test._

object EmiterSpec extends DefaultRunnableSpec {
  def spec = suite("Emiter Spec")(
    suite("Emitter Suite")(
      test("High Form emit") {
        modes.foreach(emiter.emit(firHome, bufCircuit, _))
        assert(true)(isTrue)
      },
      test("Low Form emit") {
        modes.foreach(item => emiter.emit(firHome, cntCircuit, item))
        assert(true)(isTrue)
      },
      test("High Form emit complex") {
        modes.foreach(item => emiter.emit(firHome, gcdCircuit, item))
        assert(true)(isTrue)
      }
    )
  )
  val modes = Set(High, Low, Verilog)

  val emiter: Emiter = new Emiter() {}

}

object Helper {

  val firHome = "src/main/scala/fir/"

  val bufCircuit: Seq[ChiselGeneratorAnnotation] = Seq(
    chisel3.stage.ChiselGeneratorAnnotation(() => new Regbuffer())
  )
  val cntCircuit: Seq[ChiselGeneratorAnnotation] = Seq(
    chisel3.stage.ChiselGeneratorAnnotation(() => new Counter(2))
  )
  val gcdCircuit: Seq[ChiselGeneratorAnnotation] = Seq(chisel3.stage.ChiselGeneratorAnnotation(() => new GCD()))

}
