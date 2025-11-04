class Agtok < Formula
  desc "AI Agent Token Control (TUI + CLI)"
  homepage "https://github.com/vaspike/agtok"
  version "0.1.2"

  on_macos do
    on_intel do
      url "https://github.com/vaspike/agtok/releases/download/#{version}/agtok-v#{version}-darwin-amd64.tar.gz"
      sha256 "ad2f6913980ff3c0072b48f42eab4223c56b9eaf0fb88a2d9edc7799edd39757"
    end
    on_arm do
      url "https://github.com/vaspike/agtok/releases/download/#{version}/agtok-v#{version}-darwin-arm64.tar.gz"
      sha256 "8a4fe28461cc8b6957d3e982cfcf03587d8b3f5695a450d875a9647ba0c2c85b"
    end
  end

  head "https://github.com/vaspike/agtok.git", branch: "main"


  def install
    # Prebuilt tarballs contain a single executable named 'agtok'
    bin.install "agtok"
  end

  test do
    output = shell_output("#{bin}/agtok --help")
    assert_match "agtok - AI agent token control", output
  end
end
