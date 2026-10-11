# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.5.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.5.0/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "04489e40119d2d61384509048d3ee31a5ff8ff2626a7ff70557144e782a8268d"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.5.0/atlarix-cli-darwin-x64.tar.gz"
      sha256 "24d0a96dda60303395e3dbc03ce2ab633cd6b53056be196f621d270f9731bbb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.5.0/atlarix-cli-linux-arm64.tar.gz"
      sha256 "d0159f01daee8f0d7c8e7bcca107b13d4ce50c9b7e3c2e1aeda6d1505f89fec9"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.5.0/atlarix-cli-linux-x64.tar.gz"
      sha256 "1ef10ca97240524ed9c8fd78d08b8b193c8d80de54358660cda343855b5ea95c"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
