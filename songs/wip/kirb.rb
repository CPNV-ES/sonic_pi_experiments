use_bpm 100*4
@chord_notes = []
live_loop :kirb do
  use_synth :piano
  intro
  sleep 4
  start_chords
  section1_m
  sleep 4
  section1_1
  sleep 4
  section1_m
  sleep 2
  section1_2
  sleep 4
  section1_m
  sleep 4
  section1_1
  sleep 4
  section1_m true
  sleep 2
  section1_2
  sleep 4
  stop_chords
end
def intro
  my_play :A4
  #my_play :D4
  sleep 2
  my_play :G4
  sleep 1
  my_play :F4
  sleep 1
  my_play :E4
  sleep 1
  my_play :C4
  sleep 1
  my_play :A3
  sleep 2
  my_play :D4
  sleep 1
  my_play :E4
  sleep 1
  my_play :F4
  sleep 1
  my_play :G4
  sleep 1
  my_play :E4
end
def section1_m var=false
  my_play :D5
  sleep 4
  my_play :A4
  sleep 4
  my_play :F4
  sleep 2
  my_play var ? :G4 : :E4
  sleep 2
  my_play var ? :A4 : :D4
end

def section1_1
  my_play :D4
  sleep 2
  my_play :E4
  sleep 2
  my_play :F4
  sleep 2
  my_play :D4
  sleep 2
  my_play :C4
  sleep 2
  my_play :D4
  sleep 2
  my_play :A3
end
def section1_2
  my_play :D4
  sleep 1
  my_play :E4
  sleep 1
  my_play :F4
  sleep 2
  my_play :G4
  sleep 2
  my_play :E4
  sleep 2
  my_play :C4
  sleep 2
  my_play :D4
  sleep 2
  my_play :A3
  sleep 2
  my_play :D4
end
def my_play note
  play note, sustain: 1
end
@chords_iterations = 1
def start_chords
  @chords_running = true
  in_thread do
    loop do
      if not @chords_running
        @chords_iterations = 1
        return
      end
      4.times do
        sample :drum_bass_soft
        if @chords_iterations%4 == 0
          sleep 0.5
          sample :drum_snare_hard
          sleep 0.5
        elsif
          sleep 1
        end
        sample :drum_snare_soft
        sleep 1
      end
      
      @chords_iterations +=1
      puts @chords_iterations
    end
  end
end
def stop_chords
  @chords_running = false
end