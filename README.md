# terraform-dontstarve

## What it is
This repository contain [terraform](https://terraform.io/intro/index.html) configuration that create infrastructure on [Amazon Web Services](https://aws.amazon.com/) with [Don't Starve Together](http://store.steampowered.com/app/322330/) dedicated server.

## Setup

1. clone / download this repository
2. create [terraform.tfvars file](https://terraform.io/intro/getting-started/variables.html) and add `aws_access_key`, `aws_secret_key` variables
3. Copy your [server_token.txt](http://dont-starve-game.wikia.com/wiki/Guides/Don%E2%80%99t_Starve_Together_Dedicated_Servers#Server_Tokens) into `./config`
4. cmd to this folder and run `terraform apply`
5. Enjoy!

## Questions ?

via [twitter](https://twitter.com/sawiczpawel) or here via reporting issue
