# README

* You will need ruby 2.3
* You will need PostgreSQL

## How to run the test suite

We use rspec so to run tests use the command:

`bin/rspec`

## GeoIP location

We are using geoip data from http://dev.maxmind.com/geoip/geoip2/geolite2/. The data file location is set in `.env.development`. Create this file by copying `.env.development.example`.

## Google reCAPTCHA

The reCAPTCHA sitekey and secret are held in `.env.development`. You need to create them from https://www.google.com/recaptcha/intro/invisible.html.

## Email previews

These can be viewed at http://localhost:3000/rails/mailers/.

## Thanks

We have borrowed shamelessly from https://github.com/alphagov/e-petitions. Thank you to @alphagov, @ubxd and all the gem authors. Your work is much appreciated.
