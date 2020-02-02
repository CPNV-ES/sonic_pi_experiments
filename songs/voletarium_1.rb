# Shitty voletarium
use_bpm 100*3
@globalSustain = 12
@notesCount = 1

first = false #enable intro
live_loop :xd do
  if first
    4.times do #5 times
      play :E5
      sleep 1
      play :C5
      sleep 1
      play :F5
      sleep 1
    end
    play :E5
    sleep 3
    
    play :E4
    sleep 3
    play :A4
    sleep 3
    play :B4
    sleep 3
    first = false
  end
  
  #mélodie
  in_thread{
    use_synth :piano
    
    section1
    sleep 6
    
    section2
    sleep 6
    
    section3
    sleep 3
    
    section4
    sleep 12
    
    section5
    
    @notesCount+=1
  }
  
  use_synth :piano
  3.times.each{
    accord_de_mort(:A3, :C3, :E3)
    accord_de_mort(:F2, :A3, :C3)
    accord_de_mort(:G2, :B3, :D3)
    accord_de_mort(:D2, :Fs2, :A3)
  }
  2.times.each_with_index{|index|
    accord_de_mort(:F2, :A3, :C3)
    accord_de_mort(:G2, :B3, :D3)
    2.times.each{accord_de_mort(:A3, :C3, :E3) if index%2 == 1}
    2.times.each{accord_de_mort(:D2, :Fs2, :A3) if index%2 == 0}
  }
end
def myPlay note
  @notesCount.times.each_with_index{|index|
    note_to_play = note - (index - 1)*12
    note_to_play = note + (index - 3 - @notesCount)*12 if note_to_play < 0
    play(note_to_play, sustain: @globalSustain)
  }
end

def accord_de_mort note1, note2, note3
  use_synth :hollow
  play_chord [note1, note2, note3], amp: 3, sustain: 6
  
  use_synth :piano
  sample :drum_bass_hard
  sample :drum_snare_soft
  play(note1, sustain: 12, amp: 0.5);
  sleep 1;
  sample :drum_snare_soft
  play(note2, sustain: 12, amp: 0.5);
  sleep 1;
  sample :drum_snare_soft
  play(note3, sustain: 12, amp: 0.5);
  sleep 1;
  sample :drum_snare_soft
  sample :drum_bass_hard
  sample :drum_heavy_kick
  play(note1 + 12, sustain: 12, amp: 0.5);
  sample :drum_snare_soft
  sleep 1;
  play(note3, sustain: 12, amp: 0.5);
  sample :drum_snare_soft
  sleep 1;
  #sample (Random.rand(100)+200)
  play(note2, sustain: 12, amp: 0.5);
  sample :drum_snare_soft
  sleep 1;
end
def section1
  myPlay :C5
  sleep 4
  myPlay :B4
  sleep 1
  myPlay :C5
  sleep 1
  myPlay :D5
  sleep 5
  myPlay :E5
  sleep 1
  myPlay :D4
  sleep 5
  myPlay :C5
  sleep 1
  myPlay :A4
end

def section2
  myPlay :C5
  sleep 6
  myPlay :D5
  sleep 5
  myPlay :E5
  sleep 1
  myPlay :G5
  sleep 5
  myPlay :E5
  sleep 1
  myPlay :D5
end

def section3
  myPlay :E5
  sleep 6
  myPlay :A4
  2.times do
    sleep 5
    myPlay :E5
    sleep 1
    myPlay :D5
  end
  sleep 3
  myPlay :A4
end

def section4
  myPlay :C5
  sleep 6
  myPlay :B4
  sleep 2
  myPlay :A4
  sleep 2
  myPlay :G4
  sleep 2
  myPlay:A4
end

def section5
  myPlay:C5
  sleep 6
  myPlay:D5
  sleep 2
  myPlay:E5
  sleep 2
  myPlay:G5
  sleep 2
  myPlay:A5
end
