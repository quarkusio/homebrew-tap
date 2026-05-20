# Generated with JReleaser 1.3.0 at 2026-05-20T14:26:43.485271204Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.35.4/quarkus-cli-3.35.4.zip"
  version "3.35.4"
  sha256 "a74cd059003ffc5bdeb79b15e9169106c1d12877e5286088fadf02cc14f07251"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.35.4", output
  end
end
