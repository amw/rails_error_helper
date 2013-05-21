# encoding: UTF-8

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY

  s.name        = "rails_error_helper"
  s.version     = "0.0.2"
  s.date        = "2013-05-03"
  s.summary     = "ActionView helper for displaying errors in rails forms."
  s.description = <<-TEXT
    This gem disables rail's automatic div.field_with_errors generation which
    breaks markup in some views. It also adds some methods to display errors
    for a specifc field instead of the whole model.
  TEXT

  s.required_ruby_version = ">= 1.9.3"

  s.license     = "MIT"

  s.author      = "Adam Wróbel"
  s.email       = "adam@adamwrobel.com"
  s.homepage    = "https://github.com/amw/rails_error_helper"

  s.files        = Dir["MIT-LICENSE", "lib/**/*"]
  s.require_path = "lib"

  s.add_dependency "actionpack", "~> 3.2.12"
end
