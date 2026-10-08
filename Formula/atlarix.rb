# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.2.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.2.0/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "0d3dbc41021c887672c3cf627877a5919d135798d58939955a22b349a52bd6f6"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.2.0/atlarix-cli-darwin-x64.tar.gz"
      sha256 "9be85c23e22630259573208cfb31d5ea173ab0188c238dc614ea2c86d789d678"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.2.0/atlarix-cli-linux-arm64.tar.gz"
      sha256 "c6e57dcd4fed3232f343d2c135bc8785e863951c145d3b02e19cab27573d57dc"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.2.0/atlarix-cli-linux-x64.tar.gz"
      sha256 "4ff30987b73d14e73422dc8395802a288c43bb807e13c79e3be4d0aba323ad37"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
