#!/bin/bash

free -mh | grep Mem | awk '{print $3}'
