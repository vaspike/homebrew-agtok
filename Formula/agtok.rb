class Agtok < Formula
  desc "AI Agent Token Control (TUI + CLI)"
  homepage "https://github.com/vaspike/agtok"
  version "0.1.4"

  on_macos do
    on_intel do
      url "https://github.com/vaspike/agtok/releases/download/#{version}/agtok-v#{version}-darwin-amd64.tar.gz"
      sha256 "98f691f5bd17461e1b84f02ad0d5d01ed8a7d11a20636f7582e00fe8596f9af7"
    end
    on_arm do
      url "https://github.com/vaspike/agtok/releases/download/#{version}/agtok-v#{version}-darwin-arm64.tar.gz"
      sha256 "fb672e75f948cc84e6fd8fe1d7beb7b14eb684a5ec09b96b7a586a8f9c48ec70"
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
