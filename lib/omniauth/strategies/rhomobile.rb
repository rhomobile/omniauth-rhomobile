require 'omniauth-oauth2'
require "omniauth/rhomobile/version"

module OmniAuth
  module Strategies
    class Rhomobile < OmniAuth::Strategies::OAuth2

      option :name, "rhomobile"
      option :client_options, {
        site: 'https://sso.rhomobile.com'
      }

      uid { raw_info['uid'] }

      info do
        { email: raw_info['email'] }
      end

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get("/me").parsed
      end
    end
  end
end