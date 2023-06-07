# Generated with JReleaser 1.3.0 at 2023-06-07T17:41:48.223536+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.1.1.Final/quarkus-cli-3.1.1.Final.zip"
  version "3.1.1.Final"
  sha256 "dfbd54ea9ab6e581caaa52f7d3eda45a9460dcad66e82b3b863bef462403e40f"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.1.1.Final", output
  end
end
