require_relative "lib/nami_kana/version"


Gem::Specification.new do |spec|   # <--- ESTA PARTE ES CLAVE
  spec.name          = "nami_kana"
  spec.version       = NamiKana::VERSION
  spec.authors       = ["Tu Nombre"]
  spec.email         = ["tucorreo@example.com"]

  spec.summary       = %q{CLI to learn Japanese kana}
  spec.description   = %q{Learn hiragana and katakana from the terminal.}
  spec.homepage      = "https://github.com/tuusuario/nami_kana"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*", "bin/*", "README.md"]
  spec.executables   = ["nami_kana"]
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"
end
