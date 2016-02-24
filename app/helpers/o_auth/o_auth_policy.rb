module OAuthPolicy

  def get_policy(provider, auth)
    class_name = "#{provider}".classify
    "OAuthPolicy::#{class_name}".constantize.new(auth)
  end
  module_function :get_policy

  class Base
    attr_reader :provider, :uid, :name, :nickname, :email, :url,
                :image_path, :description, :credentials, :raw_info, :username,
                :language_id, :gender_div
  end

  class Facebook < OAuthPolicy::Base
    def initialize(auth)
      @provider         = auth['provider']
      @uid              = auth['uid']
      @name             = auth['info']['name']
      @nickname         = nil 
      @email            = auth['info']['email']
      @url              = "https://www.facebook.com/#{auth['uid']}"
      @image_path       = auth['info']['image']
      @description      = nil
      @credentials      = auth['credentials'].to_json
      @raw_info         = auth['extra']['raw_info'].to_json
      @username         = auth['uid']
      @language_id      = Language.locale_to_lang(auth['info']['locale'])
      @gender_div       = Division.gender_name_to_val(auth['info']['gender'])
      freeze
    end
  end

  class Twitter < OAuthPolicy::Base
    def initialize(auth)
      @provider         = auth['provider']
      @uid              = auth['uid']
      @name             = auth['info']['name']
      @nickname         = auth['info']['nickname']
      @email            = nil
      @url              = auth['info']['urls']['Twitter']
      @image_path       = auth['info']['image']
      @description      = auth['info']['description'].try(:truncate, 255)
      @credentials      = auth['credentials'].to_json
      @raw_info         = auth['extra']['raw_info'].to_json
      @username         = auth['info']['nickname']
      @language_id      = Language.locale_to_lang(auth['extra']['raw_info']['lang'])
      @gender_div       = nil
      freeze
    end
  end

end
