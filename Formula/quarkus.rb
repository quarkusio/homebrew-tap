# Generated with JReleaser 1.3.0 at 2022-11-25T18:12:15.966523+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.14.2.Final/quarkus-cli-2.14.2.Final.zip"
  version "2.14.2.Final"
  sha256 "13ad7165ba4eda9d8618466b8b65bdc41cd547da48bcc8b9781f4d3de0daf707"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.14.2.Final", output
  end
end
