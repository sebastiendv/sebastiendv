<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="DEBUT_ALGORITHME" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2etat="inactif" F2para="" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param arrondiAuto="vrai" totalBoucles="5000000" epaisseurLigne="2" maxBoucle="500000" totalAffichages="1000" nbDecimales="8" epaisseurPoint="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="PRIX EST_DU_TYPE NOMBRE" code="1#NOMBRE#PRIX"/>
        <item algoitem="nombre EST_DU_TYPE NOMBRE" code="1#NOMBRE#nombre"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;nombre&quot;" code="4#nombre#0"/>
        <item algoitem="LIRE nombre" code="2#nombre#pasliste"/>
        <item algoitem="AFFICHER &quot;PRIX&quot;" code="4#PRIX#0"/>
        <item algoitem="SI (nombre &lt;= 10) ALORS" code="6#nombre &lt;= 10">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="PRIX PREND_LA_VALEUR nombre*0.10" code="5#PRIX#nombre*0.10#pasliste"/>
            <item algoitem="AFFICHER PRIX" code="3#PRIX#0#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (11&lt;nombre ET nombre&lt;=20) ALORS" code="6#11&lt;nombre ET nombre&lt;=20">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="PRIX PREND_LA_VALEUR nombre*0.09" code="5#PRIX#nombre*0.09#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
        <item algoitem="SI (nombre>=21) ALORS" code="6#nombre>=21">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="PRIX PREND_LA_VALEUR nombre*0.08" code="5#PRIX#nombre*0.08#pasliste"/>
            <item algoitem="AFFICHER PRIX" code="3#PRIX#0#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
