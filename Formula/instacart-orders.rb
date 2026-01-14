class InstacartOrders < Formula
  desc "Export your Instacart order history"
  homepage "https://mike-vincent.github.io/instacart-order-history-scraper/"
  url "https://raw.githubusercontent.com/mike-vincent/instacart-order-history-scraper/master/instacart-orders"
  version "1.0.0"
  sha256 :no_check
  license "MIT"

  def install
    bin.install "instacart-orders"
  end

  test do
    assert_match "session", shell_output("#{bin}/instacart-orders --help")
  end
end
