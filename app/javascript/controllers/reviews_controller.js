import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="reviews"
export default class extends Controller {
  static targets = ["togglableElement"]

  connect() {
    console.log("reviews controller connected")
  }

  toggle(event) {
    this.element.querySelector(".reviews").classList.toggle("d-none");
  }
}
