# frozen_string_literal: true

# Pin npm packages by running ./bin/importmap

pin "inter-font", to: "https://rsms.me/inter/inter.css", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin "application"
pin "admin"
pin "tailwindcss"
pin "@tailwindcss/typography"
pin "daisyui"
pin "trix"
pin "@rails/actiontext", to: "actiontext.js"
pin "highlight.js", to: "https://ga.jspm.io/npm:highlight.js@11.8.0/lib/index.js"
pin_all_from "app/javascript/controllers", under: "controllers"
