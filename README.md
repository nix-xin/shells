# shells
A collection of bash scripts to aid in work flow automation. These can be useful for pentesting, ctf challenges, or just simply automating a tedious task.

picAcert - This script was inspired by the need to continuously update the CA certs on a webserver. Well, specifically a DoD web server that advertises the accepted client certificates and their trusted CA. The script creates an interactive menu that allows the user to choose which CA certs to update. It downloads the cert in PEM format and appends it to a chain.

harray-for-curl - I wrote this script attempting to automate a curl request to 20 seperate web servers in docker containers. Basically, the /etc/hosts file (this was provided) in included the hostnames so I read the file into an array and then used curl to make the http request. Even though it could be improved, it worked fine for the number of hosts it cURLd.

pyFuzz - Yes, I know. It's not really a shell script. I didnt want to create a seperate repo for python scripts. This at least keeps it consistent with the purpose of the "shells" repo. This script is a good template for fuzzing potentially vulnerable servers/services. All you need to do is add the TARGET_IP, PORT, and PARAM to be fuzzed. Think of vulnserver.exe if you've ever practiced a BoF example.


