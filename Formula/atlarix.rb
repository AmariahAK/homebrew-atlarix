# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.17.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.17.0/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "4b4c7d5c123d2d6f75bbf048eaa4f3e63b8e2201f47f9dbf46cd502199393afd"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.17.0/atlarix-cli-darwin-x64.tar.gz"
      sha256 "9d4943972554160e4211b04c18bc4308ba68665702ca737f00fc75b7457997a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.17.0/atlarix-cli-linux-arm64.tar.gz"
      sha256 "4725480a28e209e911b57ee16d609da95bfc770cb25d8c88115899f4bd50ccd2"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.17.0/atlarix-cli-linux-x64.tar.gz"
      sha256 "80a891becea6ebfc02be2e7030016f4b1ae71d1c763f5b8adb11310031a683ae"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
