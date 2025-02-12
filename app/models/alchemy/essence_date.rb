# frozen_string_literal: true

# == Schema Information
#
# Table name: alchemy_essence_dates
#
#  id         :integer          not null, primary key
#  date       :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

module Alchemy
  # @deprecated
  class EssenceDate < BaseRecord
    acts_as_essence ingredient_column: "date"

    # Returns self.date for the Element#preview_text method.
    def preview_text(_maxlength = nil)
      return "" if date.blank?

      ::I18n.l(date, format: :'alchemy.essence_date')
    end
  end
end
