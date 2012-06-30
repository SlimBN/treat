# Contains classes to load external libraries.
module Treat::Loaders
  def self.const_missing(const)
    name = const.to_s.downcase
    require Treat.paths.lib + 
    "treat/loaders/#{name}.rb"
    const_get(const)
  end
end