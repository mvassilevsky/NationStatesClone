# == Schema Information
#
# Table name: nation_stats
#
#  id          :integer          not null, primary key
#  nation_id   :integer          not null
#  ec_freedom  :integer          not null
#  soc_freedom :integer          not null
#  pol_freedom :integer          not null
#  created_at  :datetime
#  updated_at  :datetime
#

class NationStat < ActiveRecord::Base
  validates :nation_id, :ec_freedom, :soc_freedom, :pol_freedom, presence: true

  belongs_to(
    :nation,
    class_name: "Nation",
    foreign_key: :nation_id
  )
end
