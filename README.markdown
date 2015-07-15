#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with libtest1](#setup)
    * [What libtest1 affects](#what-libtest1-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with libtest1](#beginning-with-libtest1)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

A one-maybe-two sentence summary of what the module does/what problem it solves. This is your 30 second elevator pitch for your module. Consider including OS/Puppet version it works with.       

## Module Description

If applicable, this section should have a brief description of the technology the module integrates with and what that integration enables. This section should answer the questions: "What does this module *do*?" and "Why would I use it?"

If your module has a range of functionality (installation, configuration, management, etc.) this is the time to mention it.

## Setup

### What libtest1 affects

* A list of files, packages, services, or operations that the module will alter, impact, or execute on the system it's installed on.
* This is a great place to stick any warnings.
* Can be in list or paragraph form. 

### Setup Requirements **OPTIONAL**

If your module requires anything extra before setting up (pluginsync enabled, etc.), mention it here. 

### Beginning with libtest1

The very basic steps needed for a user to get the module up and running. 

If your most recent release breaks compatibility or requires particular steps for upgrading, you may wish to include an additional section here: Upgrading (For an example, see http://forge.puppetlabs.com/puppetlabs/firewall).

## Usage

Put the classes, types, and resources for customizing, configuring, and doing the fancy stuff with your module here. 

## Reference

Here, list the classes, types, providers, facts, etc contained in your module. This section should include all of the under-the-hood workings of your module so people know what the module is touching on their system but don't need to mess with things. (We are working on automating this section!)

## Limitations

This is where you list OS compatibility, version compatibility, etc.

## Development

To run tests, first bundle install:

```shell
$ bundle install
```

Then, for overall spec tests, including syntax, lint, and rspec, run:

```shell
$ bundle exec rake test
```

To run acceptance tests locally, we use vagrant; first set a few environment variables for the target system:

```shell
$ export BEAKER_set=vagrant-centos6
$ export BEAKER_destroy=no
```
Note: Setting `BEAKER_destroy=no` will allow you to login to the vagrant box that get's provisioned.

Then execute the acceptance tests:

```shell
$ bundle exec rake acceptance
```

In order to access the vagrant box that's been provisioner, there are two options:
Obtain the unique ID of the box using `vagrant global-status`, and then use `vagrant ssh [unique_id]`

Alternately, change to the directory of the Beaker generated Vagrantfile:
```
$ cd .vagrant/beaker_vagrant_files/$BEAKER_SET
```
and run `vagrant ssh` - if there are multiple boxes, you may need to use `vagrant ssh [box_name]`
