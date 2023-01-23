## Version 2.0
## language: en

 Code: 
    {code} #Code of the challenge if it exists
  Site: #M
    {https://app.hackthebox.com/machines/432} 
  Category: 
    {very easy} 
  User: #M
    {ultramagnu} 
  Goal: #M
    {HTB:4d578d0b2eec5f242c66c240a4905c01} 

  Background:

    Hacker's software:
    |  <Software name>       |       <Version>     |
    | Kali GNU/Linux Rolling |        2022.3       |
    | Firefox ESR            | 91.11 Oesr (64 bit) |


  Machine information:
    Given I am accessing the {paper} through a VPN
    And curl with {curl -I http://10.10.11.143 }
    And enter a web {http://office.paper/}
    And gobuster version {dir -u http://office.paper/ -w /usr/share/wordlists/dirb/common.txt  }
    And SSH version {dwight@10.10.11.143}
    And is running on linux {E} with kernel {version 5.7.28}


 Scenario: {Fail|Success}:{method-used-2}
    Given I print {dwight@paper ~]$ ls -la}
    Then I can see {get user.txt}
    And get {git user.txt}
    Then I can actually read the flag from { {HTB:4d578d0b2eec5f242c66c240a4905c01} }
    And solved the challenge
