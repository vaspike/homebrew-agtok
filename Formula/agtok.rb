class Agtok < Formula
  desc "AI Agent Token Control (TUI + CLI)"
  homepage "https://github.com/vaspike/agtok"
  version "0.1.3"

  on_macos do
    on_intel do
      url "https://github.com/vaspike/agtok/releases/download/#{version}/agtok-v#{version}-darwin-amd64.tar.gz"
      sha256 "d33ad6907e752e6e9629b18a097b5b1498790744c69323ece6cf61340034ee4a"
    end
    on_arm do
      url "https://github.com/vaspike/agtok/releases/download/#{version}/agtok-v#{version}-darwin-arm64.tar.gz"
      sha256 "5b2dbeaeefe0269b840d9c5d9fbf90b7a2ef07a989f355a4b4056b5dc7ec4eca"
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
