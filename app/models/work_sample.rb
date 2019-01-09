class WorkSample < ApplicationRecord
  has_one_attached :image
  before_destroy :remove_attachments

  # This will return the image selected by the user
  # for work sample cover
  def cover_image; end

  private

  def remove_attachments
    files.purge
  end
end
