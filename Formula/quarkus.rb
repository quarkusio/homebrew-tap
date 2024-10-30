# Generated with JReleaser 1.3.0 at 2024-10-30T14:51:34.595234969Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.16.1/quarkus-cli-3.16.1.zip"
  version "3.16.1"
  sha256 "de655d895ac90e31eb60d41035415f95e1133c50efa5e8eda6db61c1e6b8cdc6"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.16.1", output
  end
end
