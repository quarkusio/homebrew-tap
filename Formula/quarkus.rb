# Generated with JReleaser 1.1.0 at 2022-07-19T19:06:27.529081+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.10.3.Final/quarkus-cli-2.10.3.Final.zip"
  version "2.10.3.Final"
  sha256 "1668386cdcc1af098df39d05db6efba27ef98fd10729c121c597b0c95d340061"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.10.3.Final", output
  end
end
