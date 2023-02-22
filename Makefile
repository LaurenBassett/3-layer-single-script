default:
	@cat Makefile
view:
	python db_viewer.py
init:
	python initialize_database.py
test:
	pytest -vvx db_viewer.py
clean:
	rm aquarium.db
clean_view: clean init view