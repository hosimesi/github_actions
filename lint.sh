#!/bin/bash
set -eu

######################################
pytest -v

echo -e "\U2728 \U2728 \U2728 \U2728 \U2728 \U2728 \U2728 \U2728 \U2728 \U2728"
echo -e "pytest successfully passed\n"

######################################
isort . --check

echo -e "\U1F308 \U1F308 \U1F308 \U1F308 \U1F308 \U1F308 \U1F308 \U1F308 \U1F308 \U1F308"
echo -e "isort successfully passed\n"

######################################
black . --check

echo -e "\U1F315 \U1F315 \U1F315 \U1F315 \U1F315 \U1F315 \U1F315 \U1F315 \U1F315 \U1F315"
echo -e "black successfully passed\n"

######################################
flake8 .

echo -e "\U1F315 \U1F315 \U1F315 \U1F315 \U1F315 \U1F315 \U1F315 \U1F315 \U1F315 \U1F315"
echo -e "flake8 successfully passed\n"

######################################
mypy .

echo -e "\U1F315 \U1F315 \U1F315 \U1F315 \U1F315 \U1F315 \U1F315 \U1F315 \U1F315 \U1F315"
echo -e "mypy successfully passed\n"

######################################
echo "All tests successfully passed"