# frozen_string_literal: true

require_relative "lib/text_wrapper/version"

Gem::Specification.new do |spec|
  spec.name = "text_wrapper"
  spec.version = TextWrapper::VERSION
  spec.authors = ["YasminMorshed"]
  spec.email = ["snowmoss10@gmail.com"]

  spec.summary = "This is an exercise where one must create a Gem."
  spec.description = "This gem will be a text wrapper gem for Ruby."
  spec.homepage = "https://github.com/YasminMorshed/text_wrapper.git"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/YasminMorshed/text_wrapper"
  spec.metadata["changelog_uri"] = "https://github.com/YasminMorshed/text_wrapper/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
