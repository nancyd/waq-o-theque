package com.nancydeschenes.waqotheque

class Bien {

    static constraints = {
		nom(blank: false, nullable:false, unique:true)
		description(nullable:true)
    }
	static hasMany = [prets: Pret]
	String nom
	String description

	String toString() {
		nom
	}
}
