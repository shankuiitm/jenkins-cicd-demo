#!/bin/bash

if grep -q "Jenkins" app.sh; then
  echo "TEST PASSED: Keyword found"
  exit 0
else
  echo "TEST FAILED: Keyword not found"
  exit 1
fi
