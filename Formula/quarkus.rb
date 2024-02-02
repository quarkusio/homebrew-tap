# Generated with JReleaser 1.3.0 at 2024-01-31T16:36:38.557557628Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.7.1/quarkus-cli-3.7.1.zip"
  version "3.7.1"
  sha256 "f59af24a92aacc67c847b80d9a31fe6acb00d8c04fdf67bd5523598356e0ea0f"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.7.1", output
  end
end
