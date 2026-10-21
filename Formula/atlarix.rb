# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.10.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.10.0/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "f1b307e2b59518f4b68185b8bf0d1944e80a64320f9c1dc6ff2d5c7de115a5a7"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.10.0/atlarix-cli-darwin-x64.tar.gz"
      sha256 "97e5e114e9cddec4667981abdf2aca3793817c5194cc187ce8bf97703c61ab90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.10.0/atlarix-cli-linux-arm64.tar.gz"
      sha256 "1588431e20235f41279f66665af8afc1fb78982b733286cf0844f2c8887eeabc"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.10.0/atlarix-cli-linux-x64.tar.gz"
      sha256 "a12621ce9f449f6167e583141f2c0e3255531042809bdbcd23e95541fef26952"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
