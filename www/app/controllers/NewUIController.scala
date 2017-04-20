package controllers

import play.api._
import play.api.mvc._

class NewUIController extends Controller {

  // The path is ignored because they are handled by front-end routing.
  def index(path: String = "/") = Assets.at(path="/public", file="index.html")

}
