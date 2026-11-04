# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.12.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.12.5/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "6f54796487f81b8c4be0bc2f693974ab227d5ea2503d59ca00e85004c4542e79"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.12.5/atlarix-cli-darwin-x64.tar.gz"
      sha256 "7afbc6e740c17d596f2b98c2ba0ae6093c411aeb7b715442ef05324e444fdc1a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.12.5/atlarix-cli-linux-arm64.tar.gz"
      sha256 "edfe89d598b0a48b6433dabe463c81b444957ed6d18681435d0dd987054a7082"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.12.5/atlarix-cli-linux-x64.tar.gz"
      sha256 "d03e2ff1df24a31ecbc0dc2c7647226a1ead0d602233e7946e3c26becfb0a295"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
