cask "census" do
  version "0.7.0"
  sha256 "af42b771a4f824a8c658c28d52818af2534479d57c2ab68aa2ab69266a8b9417"

  url "https://elsolabs.com/census/downloads/Elso%20Census-#{version}.dmg"
  name "Elso Census"
  desc "A full count of what is on your Mac"
  homepage "https://elsolabs.com/census"

  # `:sonoma` already means "sonoma or newer".
  depends_on macos: :sonoma

  app "Elso Census.app"

  # Everything Census writes. Listed so an uninstall leaves nothing behind.
  zap trash: [
    "~/Library/Preferences/com.elsolabs.census.plist",
    "~/Library/Application Support/Inventory",
  ]
end
