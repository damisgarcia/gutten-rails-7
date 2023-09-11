import hljs from 'highlight.js'
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    // document.querySelectorAll('pre').forEach((el) => {

    //   const notProseEl = document.createElement('div')
    //   notProseEl.classList.add('not-prose')
    //   notProseEl.innerHTML = el.outerHTML

    //   el.outerHTML = notProseEl.outerHTML
    // })

    document.querySelectorAll('pre').forEach((el) => {
      hljs.highlightElement(el)
    })
  }
}
