# Generated with JReleaser 1.3.0 at 2024-09-14T16:26:29.715810041Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.14.4/quarkus-cli-3.14.4.zip"
  version "3.14.4"
  sha256 "70eb4d70f4fd21e18ca3108406d538d9282450c99e6573b27efa1df6b3fe4b79"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.14.4", output
  end
end
