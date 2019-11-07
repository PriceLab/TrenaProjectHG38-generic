all:  docs install

docs:
	R -e "devtools::document()"
build:
	(R CMD build --no-build-vignettes TrenaProjectHG38.generic)

install:
	(cd ..; R CMD INSTALL --no-test-load TrenaProjectHG38.generic)

check:
	(cd ..; R CMD check `ls -t TrenaProjectHG38.generic) | head -1`)

test:
	for x in inst/unitTests/test_*.R; do echo $$x; R -f $$x; done

