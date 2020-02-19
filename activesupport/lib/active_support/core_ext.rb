# frozen_string_literal: true

module ActiveSupport
  module CoreExt
    mattr_accessor :use_rfc4122_namespaced_uuids, instance_accessor: false, default: false
  end
end

Dir.glob(File.expand_path("core_ext/*.rb", __dir__)).each do |path|
  require path
end
