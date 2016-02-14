function(doc){
	if (doc.doc_type == "Entry")
		emit(doc.date, doc)
}
