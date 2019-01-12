class WorkSample < ApplicationRecord
  has_many_attached :files
  before_destroy :remove_attachments

  private

  def remove_attachments
    file.purge
  end
end
