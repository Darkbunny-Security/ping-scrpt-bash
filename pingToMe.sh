#!/bin/bash
#Coder: Psychø

PDM(){
	echo "øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø"
	echo "øPDMPDMPDMPDMPDMPDMPDMPDMPDMPDMPDMPDMPDMPDMPDPø"
	echo "øPDMPDMPDMPDMPDMøøøøøøøøøøDMPDMPDMPDMPDMPDMPDPø"
	echo "øPDMPDMPøøøøøøøø          øøøøøøøøøDMPDMPDMPDPø"
	echo "øPDMPDMPøøøøøøøø»» PING ««øøøøøøøøøDMPDMPDMPDPø"
	echo "øPDMPDMPøøøøøøøø          øøøøøøøøøDMPDMPDMPDPø"
	echo "øPDMPDMPDMPDMPDMøøøøøøøøøøDMPDMPDMPDMPDMPDMPDPø"
	echo "øPDMPDMPDMPDMPDMPDMPDMPDMPDMPDMPDMPDMPDMPDMPDPø"
	echo "øPDMPDMPDMPDMPDMPDMPDMPDMPDMPDMPDMPDMPDMPDMPDPø"
	echo "øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø"

}
#øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø
Digite_IP(){
	read -p "[*] Digite ip: " IP;
}
#øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø
Digite_Pack(){
	read -p "[*] Quantos pacotes enviar: " PACK;
}
#øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø
Limpa(){
	clear;
}
#øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø
Dorme(){
	sleep 2;
}
#øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø
Pula(){
	echo "";
}
#øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø
Terminal(){
	export -f Digite_IP;
	export -f Digite_Pack;
	export -f Pula;
	export -f Dorme;
	export -f Pula;
	export -f PDM;
	export -f Limpa;
	export IP;
	export PACK;

	gnome-terminal -x bash -c 'PDM;\
				Dorme; Limpa;\
			        Digite_IP;\
				Digite_Pack;\
				Dorme; Pula;\
				echo "[!] Ping em "$IP;\
				Pula; Dorme;\
				ping -c $PACK $IP;\
				Dorme; Pula;\
				echo "[!] $PACK pacotes enviado(s) para $IP";\
				Pula; Dorme;\
				echo "[!] Ping concluido"; Dorme; exit;\
				exec bash'
}
#øøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøøø
Terminal
