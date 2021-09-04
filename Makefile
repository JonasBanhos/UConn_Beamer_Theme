# Adapted from Jeff Delmerico:
# https://github.com/jeffdelmerico/UH_Beamer_Theme

# Adapted from Makefile for Sybila beamer theme: 
# https://github.com/sybila/beamer-theme.git

# Adapted from Makefile for Sybila beamer theme: 
# https://github.com/sybila/beamer-theme.git

SOURCE_DIR=theme
TO_COPY=beamerthemeUConn.sty UConn-logo.png UConn-bg.pdf	
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
	# This is the destination folder containing your presentation
	DEST_DIR=/home/jonas/Dropbox/Academics/UConn-GRAD/PhD-CFD/presentations/beamer/UConn_Beamer_Theme/example

	TEXHASH=texhash
endif
ifeq ($(UNAME_S),Darwin)
	DEST_DIR=/home/jonas/Dropbox/Academics/UConn-GRAD/PhD-CFD/presentations/beamer/UConn_Beamer_Theme/example
	TEXHASH=/usr/local/texlive/2009/bin/universal-darwin/texhash
endif

.PHONY: install
install:
	@echo " [beamer theme directory] $(DEST_DIR)"; \
	for FILE in $(TO_COPY); do\
		echo " [copy] $(SOURCE_DIR)/$$FILE"; \
		sudo cp "$(SOURCE_DIR)/$$FILE" "$(DEST_DIR)"; \
		sudo chmod +r "$(DEST_DIR)/$$FILE"; \
	done;\
	sudo $(TEXHASH);\

.PHONY: uninstall
uninstall:
	@echo " [beamer theme directory] $(DEST_DIR)"; \
	for FILE in $(TO_COPY); do\
		echo " [remove] $(DEST_DIR)/$$FILE"; \
		sudo rm -f "$(DEST_DIR)/$$FILE"; \
	done;\
	sudo $(TEXHASH);\
