#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../../utils.sh" \
    && . "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

print_in_purple "\n   Browsers\n\n"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# install chrome
declare -r CHROME_URL="https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
local tmpFile=""

print_in_purple "\n • Download and install google chrome\n\n"

tmpFile="$(mktemp /tmp/XXXXX)"

download "$CHROME_URL" "$tmpFile"
print_result $? "Download Chrome" "true"
    printf "\n"
sudo dpkg -i "$tmpFile"
print_result $? "Install Chrome" "true"
    printf "\n"

# if ! package_is_installed "google-chrome-unstable"; then

#     add_key "https://dl-ssl.google.com/linux/linux_signing_key.pub" \
#         || print_error "Chrome Canary (add key)"

#     add_to_source_list "[arch=amd64] https://dl.google.com/linux/deb/ stable main" "google-chrome.list" \
#         || print_error "Chrome Canary (add to package resource list)"

#     update &> /dev/null \
#         || print_error "Chrome Canary (resync package index files)"

# fi

# install_package "Chrome Canary" "google-chrome-unstable"
# install_package "Chromium" "chromium-browser"

# # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

# printf "\n"

# if ! package_is_installed "firefox-trunk"; then

#     add_ppa "ubuntu-mozilla-daily/ppa" \
#         || print_error "Firefox Nightly (add PPA)"

#     update &> /dev/null \
#         || print_error "Firefox Nightly (resync package index files)"

# fi

# install_package "Firefox Nightly" "firefox-trunk"
