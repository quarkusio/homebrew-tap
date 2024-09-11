# Generated with JReleaser 1.3.0 at 2024-09-11T15:14:35.386936131Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.14.3/quarkus-cli-3.14.3.zip"
  version "3.14.3"
  sha256 "e8ff1a12492ec16b2c8851f780ebd7b9646d1c5180a7e82d70d70c54477eb23d"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.14.3", output
  end
end
