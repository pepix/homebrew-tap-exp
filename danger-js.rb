class DangerJs < Formula
  homepage "https://github.com/danger/danger-js"

  if Hardware::CPU.intel?
    url "https://github.com/danger/danger-js/releases/download/12.0.18/danger-macos-x64.zip"
    sha256 "eb52d5c79161ad41e2cc8cacffec92df20cae145b0833cc6d8abfb0ef820a90c"

    def install
      bin.install "danger-x64" => "danger"
    end
  end

  if Hardware::CPU.arm?
    url "https://github.com/danger/danger-js/releases/download/12.0.18/danger-macos-arm64.zip"
    sha256 "0ee2cc68b72364adb6783f1d7a3cbdffa4a4f4b1d602396419e9d7437eacc1fe"

    def install
      bin.install "danger-arm64" => "danger"
    end
  end
end
