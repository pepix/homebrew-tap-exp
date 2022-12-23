class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/12.0.20/danger-macos-x64.zip"
    sha256 "9dc1bda2f670d2b6494bd334c34e3183f8f9aa045ebce6a14b4478a0e81ff394"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/12.0.20/danger-macos-arm64.zip"
    sha256 "fb44828c3e5f51c65dabd690820f54869d4cbc8b0456215280984c41fb5ccf79"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
