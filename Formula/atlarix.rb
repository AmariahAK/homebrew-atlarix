# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.3.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.3.0/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "fe41369fb48c51ea7253a8f3bc34cbe1372ffb18764a13b45eb2c27f90663fa3"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.3.0/atlarix-cli-darwin-x64.tar.gz"
      sha256 "a23c82342f6ce2057dccef362116d69b992aefc98ef2694e228807adb342e82a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.3.0/atlarix-cli-linux-arm64.tar.gz"
      sha256 "87e7324f19fe2631c61c91266c5c29ab6914fe9cef71790a69bb13d32edcc403"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.3.0/atlarix-cli-linux-x64.tar.gz"
      sha256 "bdfe6c1e155204d55493d6f93a026ab0f30212b3fbe9f16d412db73f3cc11104"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
