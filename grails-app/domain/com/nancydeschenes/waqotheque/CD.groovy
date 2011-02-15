package com.nancydeschenes.waqotheque

class CD extends Bien {

    static constraints = {
		interprete(nullable:true)
    }
	
	String interprete
}
