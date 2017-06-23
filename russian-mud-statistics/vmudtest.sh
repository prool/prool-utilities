#!/bin/sh
# script for get online count from VMUD-test
date >> /tmp/VMUDTEST.txt
tt++ scr.vmudtest | tee /tmp/vmudtest1.txt | grep видимых | tee /tmp/vmudtest2.txt | ./filtr3 | tee /tmp2/vmudtest-ok.txt
