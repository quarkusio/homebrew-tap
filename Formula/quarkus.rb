# Generated with JReleaser 1.3.0 at 2024-07-31T09:17:05.720721254Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.13.0/quarkus-cli-3.13.0.zip"
  version "3.13.0"
  sha256 "03006baea51f0979ed210c496f3122e58294c16e72e55c60751fa1d1762292d2"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.13.0", output
  end
end
