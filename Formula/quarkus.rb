# Generated with JReleaser 1.3.0 at 2024-04-30T08:50:20.776260046Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.10.0/quarkus-cli-3.10.0.zip"
  version "3.10.0"
  sha256 "37ef33a893f1f6a76cfaea8ddfe36c6972502c459a8b52b7ecc5df8532dc72b0"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.10.0", output
  end
end
