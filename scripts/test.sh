#! /bin/bash

sqlplus $1 @./scripts/test.sql $2
