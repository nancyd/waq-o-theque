package com.nancydeschenes.waqotheque

class Personne {

    static constraints = {
		prenom(blank:false, nullable: false)
		nom(blank:true, nullable:true)
		fiabilite(blank:true, nullable:true, min:0, max:5)
    }
	
	static hasMany = [prets: Pret]
	
	String prenom;
	String nom;
	Integer fiabilite // 0: pas fiable; 5: je lui fais confiance
		
}
