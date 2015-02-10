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
#  ecosystem       :integer          not null
#

class Nation < ActiveRecord::Base
  validates :name, uniqueness: true
  validates :session_token, presence: true
  validates :password, length: { minimum: 6, allow_nil: true }
  validates(
    :name,
    :password_digest,
    :session_token,
    :ec_freedom,
    :soc_freedom,
    :pol_freedom,
    :currency,
    :animal,
    :population,
    :leader_title,
    :tax_rate,
    :ecosystem,
    presence: true
  )

  has_many(
    :nation_issues,
    class_name: "NationIssue",
    foreign_key: :nation_id
  )

  has_many :issues, through: :nation_issues

  attr_reader :password
  after_initialize :ensure_session_token

  def self.find_by_credentials(name, password)
    nation = Nation.find_by(name: name)
    return nil unless nation && nation.valid_password?(password)
    nation
  end

  def initialize(nation_parameters = {})
    if nation_parameters != {}
      adjust_params!(nation_parameters)
    end
    super(nation_parameters)
  end

  def adjust_params!(nation_parameters)
    limited_params = [:ec_freedom, :soc_freedom, :pol_freedom, :tax_rate, :ecosystem]
    limited_params.each do |param|
      if nation_parameters[param] > 100
        nation_parameters[param] = 100
      elsif nation_parameters[param] < 0
        nation_parameters[param] = 0
      end
    end
    nation_parameters
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
          return "Near-Minimal State"
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
      "are ruled with an iron fist by the corrupt, dictatorial government," +
      " which oppresses anyone who isn't on the board of a Fortune 500" +
      " company. Large corporations tend to be above the law, and use their" +
      " financial clout to gain ever-increasing government benefits at the" +
      " expense of the poor and unemployed"
    when "Right-Wing Utopia"
      "are free to succeed or fail in life on their own merits; the" +
      " successful tend to enjoy an opulent (but moralistic) lifestyle, while" +
      " the failures can be seen crowding out most jails"
    when "Corporatist Democracy"
      "enjoy frequent elections, which are uniformly corrupted by" +
      " big-spending corporations buying politicians who best suit their" +
      " interests"
    when "Left-Wing Autocracy"
      "are ruled with an iron fist by the autocratic government, which" +
      " ensures that no-one outside the party gets too rich. In their" +
      " personal lives, however, citizens are relatively unoppressed; it" +
      " remains to be seen whether this is because the government genuinely" +
      " cares about its people, or if it hasn't gotten around to stamping out" +
      " civil rights yet"
    when "Bureaucratic Socialism"
      "are fiercely patriotic and enjoy great social equality; they tend to" +
      " view other, more capitalist countries as somewhat immoral and corrupt"
    when "Ultra-Electoral Socialism"
      "love a good election, and the government gives them plenty of them." +
      " Universities tend to be full of students debating the merits of" +
      " various civil and political rights, while businesses are tightly" +
      " regulated and the wealthy viewed with suspicion"
    when "Paternalistic Dictatorship"
      "are ruled by a mostly-benevolent dictator, who grants the populace the" +
      " freedom to live their own lives but watches carefully for anyone to" +
      " slip up"
    when "Centrist Democracy"
      "have some civil rights, but not too many, enjoy the freedom to spend" +
      " their money however they like, to a point, and take part in free and" +
      " open elections, although not too often"
    when "Ultra-Electoral State"
      "enjoy a sensible mix of personal and economic freedoms, while the" +
      " political process is open and the people's right to vote held" +
      " sacrosanct"
    when "Neocameralist State"
      "are ruled by a state that operates like a business, which leaves" +
      " commerce largely unregulated but stamps out all talk of elections"
    when "Free-Market Bureaucracy"
      "are either ruled by a small, efficient government or a conglomerate of" +
      " multinational corporations; it's difficult to tell which"
    when "Market Democracy"
      "are effectively ruled by a group of massive corporations, who run for" +
      " political office and provide their well-off citizens with world-class" +
      " goods and services. Their poorer citizens, however, are mostly" +
      " starving to death while being urged to go out and get real jobs. The" +
      " populace has reasonably extensive civil rights, although these are" +
      " mostly aimed at allowing them to buy whatever they like"
    when "Liberal Socialist Autocracy"
      "are ruled with an iron fist by the socialist government, which grants" +
      " its people the freedom to do whatever they like so long as it doesn't" +
      " involve getting richer than anybody else or challenging the government"
    when "Liberal Socialism"
      "enjoy extensive civil rights and enjoy a level of social equality free" +
      " from the usual accompanying government corruption"
    when "Left-Wing Utopia"
      "are free to do what they want with their own bodies, and vote for" +
      " whomever they like in elections; if they go into business, however," +
      " they are regulated to within an inch of their lives"
    when "Permissive Dictatorship"
      "are proud of their wide-ranging civil freedoms, and those who aren't" +
      " tend to be dragged off the streets by men in dark suits and hustled" +
      " into cars with tinted windows"
    when "Progressive Welfare State"
      "enjoy extensive civil freedoms, particularly in social issues, while" +
      " business tends to be more regulated"
    when "Individualist Progressive State"
      "hold their civil and political rights very dear, although the wealthy" +
      " and those in business tend to be viewed with suspicion"
    when "Libertarian Dictatorship"
      "enjoy great individual freedoms in everything except elections, which," +
      " where they exist at all, are populist shams for a dictatorial" +
      " government that has no intention of ever giving up power"
    when "Near-Minimal State"
      "enjoy a large degree of social and economic freedom, though" +
      " experiencing a significant degree of inequality"
    when "Anarchy"
      "live in a state of perpetual fear, as a complete breakdown of social" +
      " order has led to the rise of order through biker gangs"
    end
  end


  def animal_environment
    case ecosystem
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
      "whose population is below historical levels because of bad" +
      " environmental conditions"
    when 60...70
      "which is moderately abundant and is of little environmental concern"
    when 70...80
      "which frolics freely in the nation's numerous forests"
    when 80...90
      "which is a common sight in the countryside"
    when 90..100
      "which is so common that some consider it a pest"
    end
  end

  def description
    paragraph1 = "#{name} is a #{size_description} nation, ruled by its" +
                 " powerful #{leader_title}. Its #{population_str} people" +
                 " #{gov_type_description}."
    paragraph2 = "Its currency is the #{currency} and its national animal is" +
                 " the #{animal}, #{animal_environment}. The average income" +
                 " tax is #{tax_rate.to_s}%."
                 #issues will also go here
    [paragraph1, paragraph2]
  end

  private
  def ensure_session_token
    self.session_token ||= SecureRandom.urlsafe_base64(16)
  end

end
