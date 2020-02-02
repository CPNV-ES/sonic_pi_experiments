
use_bpm 140
live_loop :euro do
  4.times do
    use_synth :hoover
    play_chord [:A4, :E5, :C5]
    use_synth :piano
    play :A4
    sleep 1
    use_synth :hoover
    play_chord [:A4, :E5, :C5]
    sleep 0.5
    use_synth :piano
    play :A4
    sleep 0.5
    use_synth :hoover
    play_chord [:A4, :E5, :C5]
    use_synth :piano
    play :E5
    sleep 1
    use_synth :hoover
    play_chord [:A4, :E5, :C5]
    use_synth :piano
    play :C5
    sleep 1
  end
  2.times do
    use_synth :hoover
    play_chord [:A4, :F5, :D5]
    use_synth :piano
    play :A4
    sleep 1
    use_synth :hoover
    play_chord [:A4, :F5, :D5]
    sleep 0.5
    use_synth :piano
    play :A4
    sleep 0.5
    use_synth :hoover
    play_chord [:A4, :F5, :D5]
    use_synth :piano
    play :F5
    sleep 1
    use_synth :hoover
    play_chord [:A4, :F5, :D5]
    use_synth :piano
    play :D5
    sleep 1
  end
  2.times do
    use_synth :hoover
    play_chord [:G4, :E5, :C5]
    use_synth :piano
    play :G4
    sleep 1
    use_synth :hoover
    play_chord [:G4, :E5, :C5]
    sleep 0.5
    use_synth :piano
    play :G4
    sleep 0.5
    use_synth :hoover
    play_chord [:G4, :E5, :C5]
    use_synth :piano
    play :E5
    sleep 1
    use_synth :hoover
    play_chord [:G4, :E5, :C5]
    use_synth :piano
    play :C5
    sleep 1
  end
  
end
