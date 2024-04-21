#!/bin/bash

# TEST CASES
# 0 - README exists.
# 1 - README is not empty.
# 2 - MAN exists.
# 3 - MAN is not empty.
# 4 - AUTHORS exists.
# 5 - AUTHORS is not empty.

ERRORNUM=0
CHECKERNAME="\033[33m<<Checker>>\033[0m "
SUCCESS=" [\033[32mSUCCESS\033[0m]"
FAILURE=" [\033[31mFAILURE\033[0m]"
TESTNO=0

# Introduction
echo -e $CHECKERNAME "Running checks for task 0...\n"

# Checks
for FILE in "README.md" "man_1_simple_shell" "AUTHORS"
do
	if ! [ -f $FILE ]; then
		echo -e $CHECKERNAME "#$TESTNO - $FILE file does not exist." $FAILURE
		ERRORNUM=$((ERRORNUM+1))
	else
		echo -e $CHECKERNAME "#$TESTNO - $FILE file exists." $SUCCESS
	fi
	TESTNO=$(($TESTNO+1))

	if ! [ -s $FILE ]; then
		echo -e $CHECKERNAME "#$TESTNO - $FILE is empty." $FAILURE
		ERRORNUM=$((ERRORNUM+1))
	else
		echo -e $CHECKERNAME "#$TESTNO - $FILE is not empty." $SUCCESS
	fi
	TESTNO=$(($TESTNO+1))
done


# Results
echo ""
echo -e $CHECKERNAME "Number of errors:" $ERRORNUM "/ 6"
if [ $ERRORNUM = 0 ]; then
	echo -e $CHECKERNAME "\033[32mAll checks passed\033[0m"
else
	echo -e $CHECKERNAME "\033[31mChecks failed.\033[0m"
fi


