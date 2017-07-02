#!/bin/bash
ls -lS --time-style=long-iso | \
awk '
	BEGIN {

	}
	{
		print $8;
	}
	END{
		
	}
'
