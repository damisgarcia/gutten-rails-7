# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin "tailwindcss", to: "./node_modules/tailwindcss/lib/index.js", preload: true
pin "daisyui", to: "./node_modules/daisyui/src/index.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
