require_relative 'manticoresearch-dev'
require_relative 'manticore_helper'
require 'hardware'

class Manticoresearch < ManticoresearchDev
  arch = Hardware::CPU.arch
  fetched_info = ManticoreHelper.fetch_version_from_url(
    "https://repo.manticoresearch.com/repository/manticoresearch_macos/dev/manticore-6.0.5-230503-ced679ae3-osx11.6-#{arch}-main.tar.gz"
  )

  version fetched_info[:version]
  url fetched_info[:file_url]
  sha256 fetched_info[:sha256]
end
