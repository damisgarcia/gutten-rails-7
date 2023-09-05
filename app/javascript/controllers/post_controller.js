import hljs from 'highlight.js'
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    document.querySelectorAll('pre').forEach((el) => {
      hljs.highlightElement(el)
    })
  }
}
