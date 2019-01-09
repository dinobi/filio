class WorkSample < ApplicationRecord
  has_one_attached :file
  before_destroy :remove_attachments

  private

  def remove_attachments
    file.purge
  end
end
