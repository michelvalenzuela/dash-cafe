// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
import "chartkick/chart.js"
import Highcharts from 'highcharts';
require("highcharts/modules/data")(Highcharts)
require("highcharts/modules/exporting")(Highcharts)
require("highcharts/modules/offline-exporting")(Highcharts)
require("highcharts/modules/map")(Highcharts)



import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()
