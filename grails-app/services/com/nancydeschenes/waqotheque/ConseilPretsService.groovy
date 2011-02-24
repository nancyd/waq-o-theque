package com.nancydeschenes.waqotheque

class ConseilPretsService {

    static transactional = false

	def beneficeDuDoute = 40; 
	
    def devraitPreter(Personne aQui, Bien quoi) {
		// A formule pourait utiliser le bien, mais
		// pour l'instant, allons-y avec l'emprunteur seulement
		devraitPreter(aQui)
    }
	
	def devraitPreter(Personne aQui) {
		// Formule super compliquée... ou pas!
		// 0..5 -> 0..100, puis on applique le bénéfice du doute		
		return aQui.fiabilite * 20 > beneficeDuDoute
    }
}
