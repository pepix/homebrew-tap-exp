class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download//danger-macos-x64.zip"
    sha256 ""

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download//danger-macos-arm64.zip"
    sha256 ""

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
