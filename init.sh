#!/bin/bash

### q cli setting
q settings mcp.initTimeout 60000

### create profiles and contexts
# global
q chat --no-interactive "/context add --global $PWD/global/default.md"
# terraform prof
q chat --no-interactive "/profile create terraform"
q chat --profile terraform --no-interactive "/context add $PWD/terraform/terraform_rules.md"
