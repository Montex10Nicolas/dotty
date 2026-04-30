#!/bin/bash

gh gist clone b523def44d883009f711a4ecbf0b9b2c
rm -rf .prettierrc
mv b523def44d883009f711a4ecbf0b9b2c/.prettierrc-svelte .prettierrc
rm -rf b523def44d883009f711a4ecbf0b9b2c
