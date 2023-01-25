# Generated with JReleaser 1.3.0 at 2023-01-25T16:11:37.057048+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.16.0.Final/quarkus-cli-2.16.0.Final.zip"
  version "2.16.0.Final"
  sha256 "43269b231b26ba827aa9ba5b76759aba22cdf620455caeaa4b9472a42803ff0c"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.16.0.Final", output
  end
end
