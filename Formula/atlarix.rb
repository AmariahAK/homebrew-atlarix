# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.14.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.14.0/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "45b2a0105ad089539a5607abb0a578dc65ddfd16164f73b93bea5d6a5e480071"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.14.0/atlarix-cli-darwin-x64.tar.gz"
      sha256 "d681da2c430bbeec2b5739e9af19632daa156fa36a5c524a5640e698fa2eaa07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.14.0/atlarix-cli-linux-arm64.tar.gz"
      sha256 "515f9ed2cd2232c441d2abc2bd1f69eb0dbe421aa795571a92c926961c987a4f"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.14.0/atlarix-cli-linux-x64.tar.gz"
      sha256 "497fc925a3787732b6aeedeab5d10cc6eb743cbe25fc8d0b23a3ba7b73f46642"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
