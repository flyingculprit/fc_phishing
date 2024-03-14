#!/bin/bash
# Update Script


dependencies() {

command -v git > /dev/null 2>&1 || { echo >&2 "Package GIT is not installed ... Unable to update ..."; exit 1; }

}

script() {

clear
printf "\n \e[1;92mUpdating \e[1;94mShellPhish\e[1;92m directory ...\n\n"
sleep 1.5
cd ..
rm -rf fc_phishing
git clone https://github.com/flyingculprit/fc_phishing.git
cd fc_phishing
chmod +x *
printf "\n\e[1;92m Update Complete ...\n\e[0m"

}

dependencies
script
