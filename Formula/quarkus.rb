# Generated with JReleaser 1.0.0 at 2022-06-29T16:43:09.655354+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.10.1.Final/quarkus-cli-2.10.1.Final.zip"
  version "2.10.1.Final"
  sha256 "711ab985601210ad30fb81e864aae6e69f9c9db539e572ab93a1ccbe9d2aef6e"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.10.1.Final", output
  end
end
