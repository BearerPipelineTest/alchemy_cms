# frozen_string_literal: true

module Alchemy
  # @deprecated
  class EssenceAudio < ActiveRecord::Base
    acts_as_essence(
      ingredient_column: :attachment,
      preview_text_method: :name,
    )

    belongs_to :attachment, optional: true
  end
end
