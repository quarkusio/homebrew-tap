# Generated with JReleaser 1.3.0 at 2024-02-08T15:15:55.357747317Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.7.2/quarkus-cli-3.7.2.zip"
  version "3.7.2"
  sha256 "0c838cdd7af526026b21a4845fd64d98c29ec54c49bb6cbcd8ab004fdaeeddad"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.7.2", output
  end
end
