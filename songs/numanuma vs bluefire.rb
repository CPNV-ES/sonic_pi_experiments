use_bpm 100*4
def myPlay note
  play note, sustain: 4
end
live_loop :jojo do
  use_synth :piano
  play_chord [:F3, :A3, :C4]
  sleep 8
  
end