package com.nancydeschenes.waqotheque

class ConseilPretsService {

    static transactional = false

	def beneficeDuDoute = 40; 
	
    def devraitPreter(Personne aQui, Bien quoi) {
		// Formule super compliquée... ou pas!
		// 0..5 -> 0..100, puis on applique le bénéfice du doute		
		return aQui.fiabilite * 20 > beneficeDuDoute
    }
}
