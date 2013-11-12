[![Build Status](https://secure.travis-ci.org/mattstratton/xm-demo-cookbook.png)](http://travis-ci.org/mattstratton/xm-demo-cookbook)


# xm-demo-cookbook cookbook

This cookbook is used in the POC for configuring a sample application server for Grosvenor. The features of this cookbook are as follows:

* Install Windows Roles and Features:
	* File Services
	* Web Server (IIS)
	* SNMP Services
	* .NET Framework 3.5.1
	* Message Queuing Services
	* Windows Process Activation

* Set local Admin password

* Join to Active Directory domain

* Create local group and add a domain user to the group

* Install .NET Framework 4.5

* Configure Windows Firewall to allow port 1433

* Create IIS website
	* App pool with domain user
	* Enable Windows authentication on the IIS site

* Create sample MSMQ queue

# Requirements

Makes heavy use of Berkshelf. Which is a good thing. You should definitely be using Berkshelf.

# Usage

# Attributes

# Recipes

# Author

Author:: Matt Stratton (<mstratton@10thmagnitude.com>)
