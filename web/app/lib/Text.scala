package lib

import scala.collection.immutable.StringOps

object Text {

  private val Ellipsis = "..."

  /**
   * if value is longer than maxLength characters, it wil be truncated to <= 97
   * characters and an ellipsis added. We try to truncate on a space to avoid
   * breaking a word in pieces.
   */
  def truncate(value: String, maxLength: Int = 100): String = {
    require(maxLength >= 10, "maxLength must be >= 10")

    if (value.length <= maxLength) {
      value
    } else {
      val pieces = value.split(" ")
      var i = pieces.length
      while (i > 0) {
        val sentence = pieces.slice(0, i).mkString(" ")
        if (sentence.length <= (maxLength-Ellipsis.length)) {
          return sentence + Ellipsis
        }
        i -= 1
      }

      val letters = value.split("")
      letters.slice(0, letters.length-4).mkString("") + Ellipsis
    }
  }

  private val RemoveUnsafeCharacters = """([^0-9a-zA-Z])""".r
  def safeName(name: String): String = {
    RemoveUnsafeCharacters.replaceAllIn(name, m => "").trim
  }

  private val MakeSingular = """s$""".r
  def singular(name: String) = {
    MakeSingular.replaceAllIn(name, m => "").trim
  }

  def underscoreToInitCap(value: String): String = {
    initCap(value.split("_"))
  }

  def initCap(word: String): String = {
    new StringOps(Text.safeName(word).toLowerCase).capitalize
  }

  def initCap(parts: Seq[String]): String = {
    parts.map(s => initCap(s)).mkString("")
  }

}
