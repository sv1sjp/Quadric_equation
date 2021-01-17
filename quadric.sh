#!/bin/bash
quadric(){
  while [ $answer -eq 0 ]
  do

      read -p "Give me the A : " A
      if [ $A -eq 0 ]
      then
          echo "Not a quadratic equation.";
          exit 0;
      fi


      read -p "Give me the B : " B
      read -p "Give me the C : " C

      D=$(( ($B)**2-(4*($A)*($C) )));

      echo The discrminant is : $D

      if [ $D -gt 0 ]
      then
          echo " This equation has 2 real roots "
          counter=$((counter+1))
      elif [ $D -eq 0 ] 
      then
          echo " This equation has 1 double real root "
      else
          echo " This equation has 2 complex roots"
      fi

      read -p "If you want to continue , press 0 . Any other option , closes the script." answer
  done
}


echo "Quadric equation by DimitrisV"
counter=0
answer=0
quadric
echo 'Equations with 2 roots: ' $counter
