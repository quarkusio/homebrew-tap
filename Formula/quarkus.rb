# Generated with JReleaser 1.0.0-M3 at 2022-03-16T13:39:45.790396+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.7.5.Final/quarkus-cli-2.7.5.Final.zip"
  version "2.7.5.Final"
  sha256 "4259f36e0353f4883d74c02207d296342567b1ed2756662f1e3ac5926fa556ba"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.7.5.Final", output
  end
end
