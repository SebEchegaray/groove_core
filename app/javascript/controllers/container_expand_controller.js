import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["content", "wrapper"]

  connect() {
    this.element.addEventListener("click", this.toggleContent)
  }

  toggleContent() {
      this.contentTarget.classList.toggle("expanded")
      this.wrapperTarget.classList.toggle("expanded")
  }
}
