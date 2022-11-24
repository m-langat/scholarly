import { Application } from "@hotwired/stimulus"
import {Turbo} from "@hotwired/turbo-rails"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application
window.Turbo = Turbo

export { application }
