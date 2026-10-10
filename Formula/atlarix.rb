# Rendered by scripts/ci/render-homebrew-formula.mjs on every release and pushed
# to AmariahAK/homebrew-atlarix (Formula/atlarix.rb). Do not edit there.
class Atlarix < Formula
  desc "AI coding agent in your terminal that works with any model"
  homepage "https://atlarix.dev/cli"
  version "15.4.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.4.1/atlarix-cli-darwin-arm64.tar.gz"
      sha256 "08abab168d1e9397f75d504ebd1bf8782af195c819c8ed76cd4874053414331e"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.4.1/atlarix-cli-darwin-x64.tar.gz"
      sha256 "a66fbde50816dd773765e914849465f4a4f106ac1ed5b82d1e802b4ff902c982"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.4.1/atlarix-cli-linux-arm64.tar.gz"
      sha256 "a457eccb4e62f14961445844029aec70d11392c01db912819d8854f9424627f8"
    end
    on_intel do
      url "https://github.com/AmariahAK/atlarix-releases/releases/download/v15.4.1/atlarix-cli-linux-x64.tar.gz"
      sha256 "adde6b9dccf177948bee5256224bc9807bb8c9c49ff23cef6c9a19f29b60dff1"
    end
  end

  def install
    bin.install "atlarix"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/atlarix --version")
  end
end
