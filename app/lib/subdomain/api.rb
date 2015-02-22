module Subdomain
  class Api
    class << self
      def matches?(request)
        if Rails.env.production?
          request.subdomain == 'api'
        else
          request.subdomain.blank?
        end
      end

      def path
        'api' unless Rails.env.production?
      end
    end
  end
end
