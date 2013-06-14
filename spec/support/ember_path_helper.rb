module EmberPathHelper
  def ember(path)
    '/#' + path
  end

  def ember_current_path
    /(\/#\/.*)$/.match(current_url)[0]
  end
end
