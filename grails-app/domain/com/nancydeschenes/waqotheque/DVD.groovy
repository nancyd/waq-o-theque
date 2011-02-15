package com.nancydeschenes.waqotheque

class DVD extends Bien {

    static constraints = {
		genre(nullable:true)
    }
	
	String genre
	
}
