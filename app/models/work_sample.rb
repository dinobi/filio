class WorkSample < ApplicationRecord
  has_many_attached :files
  before_destroy :remove_attachments
  before_validation :remove_duplicates

  private

  def remove_attachments
    files.purge
  end

  def attachments
    files.attachments
  end

  # This will be an O(N) statement
  def remove_duplicates
    return if attachments.size == 1

    duplicate = {}
    attachments.each do |v|
      name = v.blob.filename.instance_variable_get(:@filename)
      duplicate[name] = (duplicate[name] || 0) + 1

      next if duplicate[name] == 1

      v.purge
    end
  end
end
