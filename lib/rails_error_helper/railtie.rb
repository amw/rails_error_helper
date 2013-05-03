module RailsErrorHelper
  class Railtie < Rails::Railtie
    def self.setup!
      ActionView::Helpers::FormBuilder.send :include,
        RailsErrorHelper::FormHelper
      ActionView::Base.field_error_proc = Proc.new { |html_tag, instance|
        html_tag
      }
    end

    config.to_prepare do
      RailsErrorHelper::Railtie.setup!
    end
  end
end

require 'rails_error_helper/form_helper'
