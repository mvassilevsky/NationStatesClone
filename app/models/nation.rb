# == Schema Information
#
# Table name: nations
#
#  id              :integer          not null, primary key
#  name            :string(255)      not null
#  password_digest :string(255)      not null
#  session_token   :string(255)      not null
#  ec_freedom      :integer          not null
#  soc_freedom     :integer          not null
#  pol_freedom     :integer          not null
#  currency        :string(255)      not null
#  animal          :string(255)      not null
#  population      :integer          not null
#  leader_title    :string(255)      not null
#  motto           :string(255)
#  recent_issues   :string(255)
#  flag_url        :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  tax_rate        :integer          not null
#

class Nation < ActiveRecord::Base
  validates :name, uniqueness: true
  validates :session_token, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }

  attr_reader :password
  after_initialize :ensure_session_token

  def self.find_by_credentials(name, password)
    nation = Nation.find_by(name: name)
    return nil unless nation && nation.valid_password?(password)
    nation
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def valid_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_token!
    self.session_token = SecureRandom.urlsafe_base64(16)
    self.save!
    self.session_token
  end

  def government_type
    if soc_freedom >= 0 && soc_freedom < 33
      if ec_freedom >= 0 && ec_freedom < 33
        if pol_freedom >= 0 && pol_freedom < 33
          return "Absolute Tyranny"
        elsif pol_freedom >= 33 && pol_freedom < 66
          return "Authoritarian Democracy"
        else
          return "Tyranny by Majority"
        end
      elsif ec_freedom >= 33 && ec_freedom < 66
        if pol_freedom >= 0 && pol_freedom < 33
          return "Fascist Tyranny"
        elsif pol_freedom >= 33 && pol_freedom < 66
          return "Reactionary Democracy"
        else
          return "Conservative Democracy"
        end
      else
        if pol_freedom >= 0 && pol_freedom < 33
          return "Corporate Police State"
        elsif pol_freedom >= 33 && pol_freedom < 66
          return "Right-Wing Utopia"
        else
          return "Corporatist Democracy"
        end
      end
    elsif soc_freedom >= 33 && soc_freedom < 66
      if ec_freedom >= 0 && ec_freedom < 33
        if pol_freedom >= 0 && pol_freedom < 33
          return "Left-Wing Dictatorship"
        elsif pol_freedom >= 33 && pol_freedom < 66
          return "Democratic Socialism"
        else
          return "Ultra-Electoral Socialism"
        end
      elsif ec_freedom >= 33 && ec_freedom < 66
        if pol_freedom >= 0 && pol_freedom < 33
          return "Paternalistic Dictatorship"
        elsif pol_freedom >= 33 && pol_freedom < 66
          return "Centrist Democracy"
        else
          return "Ultra-Electoral State"
        end
      else
        if pol_freedom >= 0 && pol_freedom < 33
          return "Neocameralist State"
        elsif pol_freedom >= 33 && pol_freedom < 66
          return "Capitalist Democracy"
        else
          return "Market Democracy"
        end
      end
    else
      if ec_freedom >= 0 && ec_freedom < 33
        if pol_freedom >= 0 && pol_freedom < 33
          return "Liberal Socialist Dictatorship"
        elsif pol_freedom >= 33 && pol_freedom < 66
          return "Liberal Socialist Democracy"
        else
          return "Left-Wing Utopia"
        end
      elsif ec_freedom >= 33 && ec_freedom < 66
        if pol_freedom >= 0 && pol_freedom < 33
          return "Permissive Dictatorship"
        elsif pol_freedom >= 33 && pol_freedom < 66
          return "Progressive Welfare State"
        else
          return "Individualist Progressive State"
        end
      else
        if pol_freedom >= 0 && pol_freedom < 33
          return "Libertarian Dictatorship"
        elsif pol_freedom >= 33 && pol_freedom < 66
          return "Democratic Night-Watchman State"
        else
          return "Anarchy"
        end
      end
    end
  end

  private
  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end

end
