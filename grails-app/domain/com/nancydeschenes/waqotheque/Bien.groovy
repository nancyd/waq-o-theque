package com.nancydeschenes.waqotheque

class Bien {

    static constraints = {
		nom(blank: false, nullable:false, unique:true)
		description(nullable:true)
    }
	
	String nom
	String description
	
}
