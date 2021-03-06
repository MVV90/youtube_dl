# -*- encoding: utf-8 -*-
require File.expand_path('../lib/youtube_dl/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Anton Kopylov"]
  gem.email         = ["anton@kopylov.net"]
  gem.description   = %q{Youtube video downloader}
  gem.summary       = %q{This is a wrapper for youtube_dl}
  gem.homepage      = ''

  gem.executables   = `git ls-files -- {bin,provisioning}/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  gem.name          = "youtube_dl"
  gem.require_paths = ['lib']
  gem.version       = YoutubeDl::VERSION

  gem.add_dependency "httparty"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "minitest"
end
