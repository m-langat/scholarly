import { Controller } from "@hotwired/stimulus"
import { get } from "@rails/request.js"

export default class extends Controller {
  static targets = ["select"]
  static values = {
    url: String,
    param: String
  }

  connect() {
    if (this.selectTarget.id === "") {
      this.selectTarget.id = Math.random().toString(36)
    }
  }

  change(event) {
    let params = new URLSearchParams()
    params.append(this.paramValue, event.target.selectedOptions[0].value)
    params.append("target", this.selectTarget.id)
    let theme = event.target.selectedOptions[0].value
    let target = "select"

    get(`/papers/conference_subthemes?target=${this.selectTarget.id}&conference_theme_id=${theme}`, {
      responseKind: "turbo-stream"
    })
  }
}