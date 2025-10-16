# Generated with JReleaser 1.3.0 at 2025-10-16T15:00:33.76878642Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.28.4/quarkus-cli-3.28.4.zip"
  version "3.28.4"
  sha256 "238b938cd865aa3c2e74a0da3b6dcceb22edc9bd116a4a57f7189957b2285a51"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.28.4", output
  end
end
