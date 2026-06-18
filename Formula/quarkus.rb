# Generated with JReleaser 1.3.0 at 2026-06-18T07:04:08.232393153Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.36.3/quarkus-cli-3.36.3.zip"
  version "3.36.3"
  sha256 "870f00c2a8fd6f3bee51fef429554448fdd75de91643718109fe32f2385aa0c7"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.36.3", output
  end
end
