# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.12.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.12.1/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "ea069afc8d1fb1cbc774d29a76eb156cc628bcc161cb7a79bf965cfdd18a009b"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.12.1/atlarix-cli-darwin-x64.tar.gz"
      sha256 "9c236f1d33b5e5b592f554affb0448b0eba05d4fef607c9c02137d9b6f382628"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.12.1/atlarix-cli-linux-arm64.tar.gz"
      sha256 "eb86e9240c9c453d4bdb541dc4f4e97c4b42046fbc72e3df3348f05d13ad59d1"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.12.1/atlarix-cli-linux-x64.tar.gz"
      sha256 "e9c02393484a3a73cf0460ab9725a50f74b4f81b3fa353b3a406a2496e2c7f67"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
