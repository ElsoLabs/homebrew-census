cask "census" do
  version "0.7.1"
  sha256 "96761c547646f205c0ff80974d4897880480ecfd3c52de7e26bc5eca37f1c1a4"

  url "https://elsolabs.com/census/downloads/Elso%20Census-#{version}.dmg"
  name "Elso Census"
  desc "A full count of what is on your Mac"
  homepage "https://elsolabs.com/census"

  #  already means "sonoma or newer". The string form ">= :sonoma"
  # is deprecated and makes brew print a warning naming this tap on every tap.
  depends_on macos: :sonoma

  app "Elso Census.app"

  # Everything Census writes. Listed so an uninstall leaves nothing behind.
  zap trash: [
    "~/Library/Preferences/com.elsolabs.census.plist",
    "~/Library/Application Support/Inventory",
  ]
end
