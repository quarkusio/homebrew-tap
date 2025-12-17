# Generated with JReleaser 1.3.0 at 2025-12-17T17:38:52.327541729Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.30.4/quarkus-cli-3.30.4.zip"
  version "3.30.4"
  sha256 "16c4ba6d225efeca6a9bb9fa6b00d9a6a422098c96f8e7aac071399ceab8ff22"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.30.4", output
  end
end
