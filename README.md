# simple_fusioninventory
Puppet module to install, config and run the fusioninventory-agent into Linux's server on Red Hat family's distros, using Foreman.

#### Table of Contents
1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with simple_fusioninventory](#setup)
    * [What simple_fusioninventory affects](#what-simple_fusioninventory-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with simple_fusioninventory](#beginning-with-simple_fusioninventory)
4. [Limitations - OS compatibility, etc.](#limitations)

## Overview
When you need to know, how it's your infraestructure composed by, and never made a cute CMDB this is when GLPI it's help as an Open Source and free solution. And keep the CMDB updated everytime automaticaly using a fusioninventory-agent it's a great solution. This class solved the problem of a continusly update when it's integrated on The Foreman project.

## Module Description
This module keep updated the CMDB of GLPI whens runs Puppet agent every time.

Divided into sequentially applied classes.
Install -> Config -> Service
The service ensure to run and avoid errors if some modules went wrong. 


## Setup

### What simple_fusioninventory affects
Affect the CMDB of a GLPI server updating a computer assest.

### Setup Requirements **OPTIONAL**
It's needed a epel repository or access to a mirror with perl and fusioninventory packages.

### Beginning with simple_fusioninventory
To be used just need to place the simple_fusioninventory folder on your Puppet's module folder, import the class and it's ready to be used.

## Limitations
Just tested on Red Hat, CentOS, and Oracle Linux 6.x and 7.x
