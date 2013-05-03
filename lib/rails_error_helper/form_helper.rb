# coding: utf-8

module RailsErrorHelper
  module FormHelper
    def error_class field_name
      "field_with_errors" if @object.errors[field_name].present?
    end

    def error_description field_name
      errors = @object.errors[field_name]
      return unless errors.present?

      result = "<span class='error_description'>"
      errors.each { |msg| result += "• #{msg}<br />" }
      result += "</span>"
      result.html_safe
    end
  end
end
