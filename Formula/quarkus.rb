# Generated with JReleaser 1.3.0 at 2024-01-10T17:33:18.147088Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.6.5/quarkus-cli-3.6.5.zip"
  version "3.6.5"
  sha256 "80337b2935a4b59418e84cbd13f486cf8316c6ab97357eb7c4fbcc5815f7fc87"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.6.5", output
  end
end
