package com.nancydeschenes.waqotheque

class PersonneTagLib {
	
	static namespace = 'waqotheque'

	def personne = { attr, body ->
		Personne personneInstance = attr['value']
		if (!personneInstance) {
			throwTagError("Tag [personne] is missing required attribute [value]")
		}
		def linkColor = "black";
		switch (personneInstance.fiabilite) {
			case 5: linkColor = "green"; break
			case 4..3 : linkColor = "yellow"; break
			case 2..1 : linkColor = "orange"; break
			case 0: linkColor = "red"; break
		}
		out << """<a href="${g:createLink(controller: 'personne', action:'show', id:personneInstance.id)}" 
					style="color: ${linkColor}">
					${personneInstance.prenom} ${personneInstance.nom}
		</a>"""
	}
}
