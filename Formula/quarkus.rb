# Generated with JReleaser 1.3.0 at 2024-09-04T15:51:58.712263498Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.14.2/quarkus-cli-3.14.2.zip"
  version "3.14.2"
  sha256 "4215bbe945b2437484ce10ddce7b5a66d36a79110d8cea00e9071a4776d1b8f9"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.14.2", output
  end
end
