package com.nancydeschenes.waqotheque

class PretController {

//	def conseilPretsService;
	ConseilPretsService conseilPretsService;

		def scaffold = true

	def save = {
		def pretInstance = new Pret(params)
		if (!conseilPretsService.devraitPreter(pretInstance.emprunteur, pretInstance.bienPrete)) {
			flash.message = "Ce pr&ecirc;t n'est pas une bonne id&eacute;e"
			render(view: "create", model:[pretInstance: pretInstance])
			return;
		}
		if (pretInstance.save(flush: true)) {
			flash.message = "${message(code: 'default.created.message', args: [message(code: 'pret.label', default: 'Pret'), pretInstance.id])}"
			redirect(action: "show", id: pretInstance.id)
		}
		else {
			render(view: "create", model: [pretInstance: pretInstance])
		}
	}
	
	def ajaxEstCeUneBonneIdee = {
		Personne emprunteur = Personne.get(params['emprunteur.id']);
		if (conseilPretsService.devraitPreter(emprunteur)) {
			render "Bon choix"
		} else {
			render "Ah &ccedil;a, &ccedil;'est pas une bonne id&eacute;e"
		}
	}

}
