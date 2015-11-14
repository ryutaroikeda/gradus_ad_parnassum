SRC=gradus_ad_parnassum.ly
SF=/usr/share/sounds/sf2/FluidR3_GM.sf2
TARGET=$(patsubst %.ly,%.pdf,$(SRC))
MIDI=$(patsubst %.ly,%.midi,$(SRC))

all: $(TARGET)

$(TARGET): $(SRC)
	lilypond $< 

.PHONY: play

play: $(MIDI)
	fluidsynth -i $(SF) $<
