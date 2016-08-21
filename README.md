# Tournament Results
----
by Jasmin Shah, for the purpose of completing fourth lesson of :
[Full-Stack Web Developer Nanodegree](https://www.udacity.com/course/nd004)

# About This project
----
This project simulates a [Swiss-Style Tournament](https://en.wikipedia.org/wiki/Swiss-system_tournament). A PostgreSQL database is used to store players and the records of matches. It is developed on Virtual Box with Vagrant File (Ubuntu OS + PostgreSQL DB+ psql) provided by Udacity.

# How to run?
----
1. Install [VirtualBox](https://www.virtualbox.org/)
2. Install [Vagrant](https://www.vagrantup.com/)
3. Clone [this](https://github.com/Jasmin25/fullstack-nanodegree-vm) repository
4. Open Terminal
5. cd fullstack/vagrant
6. vagrant up (turn off the VM with 'vagrant halt')
7. vagrant ssh (type 'exit' to log out)
8. cd /vagrant/tournament
9. psql -f tournament.sql
10. python tournament_test.py

# Credits
---
Test module (tournament_test.py) provided by Udacity.

# References
---
1. http://www.wizards.com/dci/downloads/swiss_pairings.pdf
2. https://docs.google.com/document/d/16IgOm4XprTaKxAa8w02y028oBECOoB1EI1ReddADEeY
3. http://pythoncentral.io/pythons-range-function-explained/

# License
----
The content of this repository is licensed under [MIT License](https://opensource.org/licenses/MIT)