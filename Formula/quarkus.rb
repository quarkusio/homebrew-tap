# Generated with JReleaser 1.3.0 at 2023-01-10T18:27:55.573862+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.15.3.Final/quarkus-cli-2.15.3.Final.zip"
  version "2.15.3.Final"
  sha256 "101658cda38676ac7742afefa174f7cbcc20d008aaa6424c7c05c0c88e5cb51f"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.15.3.Final", output
  end
end
