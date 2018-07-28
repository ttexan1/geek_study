class EventImageUploader < BaseImageUploader
  process :resize_to_fit => [300, 300]
end
