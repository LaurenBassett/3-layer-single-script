default:
	@cat Makefile
view:
	pytest -vvx db_viewer.py
	python db_viewer.py
init:
	python initialize_database.py
test:
	pytest -vvx db_viewer.py
test_smoke:
	pytest -vvx db_viewer.py -m "smoke"
clean:
	rm aquarium.db
clean_view: clean init view