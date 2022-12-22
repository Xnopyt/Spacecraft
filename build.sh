#!/bin/bash
cd /spacecraft
make clean
make
chown -R 1000:1000 /spacecraft/*
