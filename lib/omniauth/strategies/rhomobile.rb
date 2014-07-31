require 'omniauth-oauth2'
require "omniauth/rhomobile/version"

module OmniAuth
  module Strategies
    class Rhomobile < OmniAuth::Strategies::OAuth2

      option :name, "rhomobile"
      option :client_options, {
        site: 'https://accounts.rhomobile.com'
      }

      uid { raw_info['id'] }

      info do
        { email: raw_info['email'] }
      end

      extra do
        { raw_info: raw_info }
      end

      def raw_info
        url = '/profile'
        params = {
          'api_key'      => access_token.client.id,
          'access_token' => access_token.token
        }
        @raw_info ||= access_token.get(url, params: params).parsed
      end
    end
  end
end