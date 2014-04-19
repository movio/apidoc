package lib

import core.ServiceDescription
import org.scalatest.FlatSpec
import org.junit.Assert._

class RouteGeneratorSpec extends FlatSpec {

  it should "generate routes" in {
    val json = scala.io.Source.fromFile("../svc/api.json").getLines.mkString("\n")
    val generator = RouteGenerator(ServiceDescription(json))
    println(generator.generate())
  }

}
