import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  toggle(event) {
    if (event.params.aside) {
      const aside = document.getElementById(event.params.aside)
      aside.classList.toggle("!translate-x-0")
    }
  }
}
