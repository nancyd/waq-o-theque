package com.nancydeschenes.waqotheque

class Pret {

    static constraints = {
		emprunteur(blank:false, nullable:false)
		bienPrete(blank:false, nullable:false)
		dateEmprunt(blank:false, nullable: false)
		dateRetour(blank:true, nullable:true)
    }
	static belongsTo = [emprunteur: Personne, bienPrete: Bien]
	
	Date dateEmprunt
	Date dateRetour
}
