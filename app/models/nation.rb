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
#  environment     :integer
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

  def gov_type
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
          return "Left-Wing Autocracy"
        elsif pol_freedom >= 33 && pol_freedom < 66
          return "Bureaucratic Socialism"
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
          return "Free-Market Bureaucracy"
        else
          return "Market Democracy"
        end
      end
    else
      if ec_freedom >= 0 && ec_freedom < 33
        if pol_freedom >= 0 && pol_freedom < 33
          return "Liberal Socialist Autocracy"
        elsif pol_freedom >= 33 && pol_freedom < 66
          return "Liberal Socialism"
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

  def individual_liberty
    case soc_freedom
    when 0...10
      "Ultra-Repressive"
    when 10...20
      "Reactionary"
    when 20...30
      "Traditionalist"
    when 30...40
      "Conservative"
    when 40...50
      "Group-Oriented"
    when 50...60
      "Moderate"
    when 60...70
      "Respected"
    when 70...80
      "Permissive"
    when 80...90
      "Individualist"
    when 90..100
      "Anarchic"
    end
  end

  def economy
    case ec_freedom
    when 0...10
      "Entirely Centralized"
    when 10...20
      "Command-and-Control"
    when 20...30
      "Centrally Planned"
    when 30...40
      "Industrial Policy"
    when 40...50
      "Statist"
    when 50...60
      "Average"
    when 60...70
      "Social Market"
    when 70...80
      "Liberal"
    when 80...90
      "Laissez-Faire"
    when 90..100
      "Market Anarchist"
    end
  end

  def political_freedom
    case pol_freedom
    when 0...10
      "Nonexistent"
    when 10...20
      "Struggling"
    when 20...30
      "Weak"
    when 30...40
      "Some"
    when 40...50
      "Below Average"
    when 50...60
      "Average"
    when 60...70
      "Above Average"
    when 70...80
      "Good"
    when 80...90
      "Strong"
    when 90..100
      "World Benchmark"
    end
  end

  def size_description
    case population
    when 1000000...5000000
      "tiny"
    when 5000000...10000000
      "small"
    when 10000000...50000000
      "moderately-sized"
    when 50000000...100000000
      "large"
    when 100000000...500000000
      "huge"
    when 500000000...1000000000
      "gargantuan"
    else
      "colossal"
    end
  end

  def population_str
    if population >= 1000000000000
      return (population / 1000000000000.to_f).to_s[0..3] + " trillion"
    elsif population >= 1000000000
      return (population / 1000000000.to_f).to_s[0..3] + " billion"
    else
      return (population / 1000000.to_f).to_s[0..3] + " million"
    end
  end

  def gov_type_description
    case gov_type
    when "Absolute Tyranny"
      "are ruled without fear or favor by a psychotic dictator, who outlaws" +
      " just about everything and refers to the populace as 'my little" +
      " playthings'"
    when "Authoritarian Democracy"
      "are prohibited from doing almost everything except voting, which they" +
      " do timidly and conservatively"
    when "Tyranny by Majority"
      "enjoy frequent elections, where the majority of the populace" +
      " regularly votes to increase its benefits at the expense of various" +
      " helpless minorities"
    when "Fascist Tyranny"
      "are managed by an oppressive government, which aims for the good of" +
      " the nation at the exclusion of the welfare of the individual"
    when "Reactionary Democracy"
      "are highly moralistic and fiercely conservative, in the sense that" +
      " they tend to believe most things should be outlawed. People who have" +
      " good jobs and work quietly at them are lauded; others are viewed with" +
      " suspicion"
    when "Conservative Democracy"
      "are known throughout the region for their efficiency and work ethic," +
      " as well as their general suspicion of leisure"
    when "Corporate Police State"
    when "Right-Wing Utopia"
    when "Corporatist Democracy"
    when "Left-Wing Autocracy"
    when "Bureaucratic Socialism"
    when "Ultra-Electoral Socialism"
    when "Paternalistic Dictatorship"
    when "Centrist Democracy"
    when "Ultra-Electoral State"
    when "Neocameralist State"
    when "Free-Market Bureaucracy"
    when "Market Democracy"
    when "Liberal Socialist Autocracy"
    when "Liberal Socialism"
    when "Left-Wing Utopia"
    when "Permissive Dictatorship"
    when "Progressive Welfare State"
    when "Individualist Progressive State"
    when "Libertarian Dictatorship"
    when "Democratic Night-Watchman State"
    when "Anarchy"
    end
  end


  def animal_environment
    case environment
    when 0...10
      "which is completely extinct, unable to survive in the blighted environment"
    when 10...20
      "which is on the brink of extinction, learning to swim through industrial sludge"
    when 20...30
      "which is mainly found in zoos, the polluted environment being hostile to it"
    when 30...40
      "which is also the nation's main course"
    when 40...50
      "which invites concern due to the destruction of its habitat"
    when 50...60
      "whose population is below historical norms due to a worsened environment"
    when 60...70
      "which is moderately abundant and is of little environmental concern"
    when 70...80
      "which frolics freely in the nation's numerous forests"
    when 80...90
      "which is a common sight in the countryside"
    when 90..100
      "which is so common, some consider it a pest"
    end
  end

  def description
    paragraph1 = name + " is a " + size_description + " nation. Its " + \
                 population_str + " people " + gov_type_descrption + "."
    paragraph2 = "Its currency is the " + currency + \
                 " and its national animal is the " + national_animal + \
                 " ," + animal_environment + "." #issues will also go here
    [paragraph1, paragraph2]
  end

  private
  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end

end
