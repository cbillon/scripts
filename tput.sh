#!/bin/bash
couleurs=(Noir Rouge Vert Jaune Bleu Magenta Cyan Blanc); 
for i in $(seq 1 7); 
	do 
		echo -e " $(tput setaf $i)${couleurs[$i]}\tTexte$(tput sgr0)\t$(tput bold)$(tput setaf $i)Texte$(tput sgr0)\t$(tput sgr 0 1)$(tput setaf $i)Texte$(tput sgr0)\t(tput setaf $i)"; 
	done
exit 0;