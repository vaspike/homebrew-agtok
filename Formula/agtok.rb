class Agtok < Formula
  desc "AI Agent Token Control (TUI + CLI)"
  homepage "https://github.com/vaspike/agtok"
  # Uncomment and update when you cut a release:
  # url "https://github.com/vaspike/agtok/archive/refs/tags/v0.2.0.tar.gz"
  # sha256 "<REPLACE_WITH_TARBALL_SHA256>"
  head "https://github.com/vaspike/agtok.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X tks/internal/version.Version=#{version}"
    system "go", "build", "-trimpath", "-ldflags", ldflags, "-o", bin/"agtok", "./cmd/agtok"
  end

  test do
    output = shell_output("#{bin}/agtok --help")
    assert_match "agtok - AI agent token control", output
  end
end
