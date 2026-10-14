# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.7.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.7.0/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "a5c7c5493c75256779ba23438ab7b693f7e5eb9afd7792928543c0e8468aec62"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.7.0/atlarix-cli-darwin-x64.tar.gz"
      sha256 "ad03737fb1ab3c75ff9dbb6fa95d67cfdfd8fdcbcca4bbd0b5ea18260256db76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.7.0/atlarix-cli-linux-arm64.tar.gz"
      sha256 "f6ce3085fa2c8b8ed06d6904458366309a93a244a7d4df4464b6826ff8a19515"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.7.0/atlarix-cli-linux-x64.tar.gz"
      sha256 "aa0f8cc00ca90f7bbc3903b0aade775cdc3706567a787361caa761d0eaafe003"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
