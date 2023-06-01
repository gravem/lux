import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

// Connects to data-controller="datapicker"
export default class extends Controller {
  static targets = ["start", "end"]
  connect() {
    console.log("hello from picker controller")
    flatpickr(this.startTarget)
    flatpickr(this.endTarget)
  }
}
