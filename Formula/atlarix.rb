# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.18.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.18.1/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "cf3c4e2b19fc604987e4d5b240197af52c270525a57273e46b19ca2744962bd1"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.18.1/atlarix-cli-darwin-x64.tar.gz"
      sha256 "a1202258852e62a854cba3b851dd09646ccf6c4faf8d92e88e78b286450f5290"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.18.1/atlarix-cli-linux-arm64.tar.gz"
      sha256 "6dcfaa10f2f6dafdf908ea04ac33bd27e8251ab8f1a12e65f667df799db75915"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.18.1/atlarix-cli-linux-x64.tar.gz"
      sha256 "64981719926cf154aa22d13bc313539424e2450386058d24de7bc74894658c31"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
