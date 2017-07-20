# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

group_text = File.read(Rails.root.join('lib', 'seeds', 'groups.csv'))
group_csv = CSV.parse(group_text, :headers => true, :encoding => 'ISO-8859-1')

levels_text = File.read(Rails.root.join('lib', 'seeds', 'levels.csv'))
levels_csv = CSV.parse(levels_text, :headers => true, :encoding => 'ISO-8859-1')


event_text = File.read(Rails.root.join('lib', 'seeds', 'events.csv'))
event_csv = CSV.parse(event_text, :headers => true, :encoding => 'ISO-8859-1')


score_type_text = File.read(Rails.root.join('lib', 'seeds', 'score_type.csv'))
score_type_csv = CSV.parse(score_type_text, :headers => true, :encoding => 'ISO-8859-1')


segments_text = File.read(Rails.root.join('lib', 'seeds', 'segment_type.csv'))
segments_csv = CSV.parse(segments_text, :headers => true, :encoding => 'ISO-8859-1')


segmentevent_text = File.read(Rails.root.join('lib', 'seeds', 'segment_event.csv'))
segmentevent_csv = CSV.parse(segmentevent_text, :headers => true, :encoding => 'ISO-8859-1')


segmentscore_text = File.read(Rails.root.join('lib', 'seeds', 'segment_score_type.csv'))
segmentscore_csv = CSV.parse(segmentscore_text, :headers => true, :encoding => 'ISO-8859-1')

comp_text = File.read(Rails.root.join('lib', 'seeds', 'competitions.csv'))
comp_csv = CSV.parse(comp_text, :headers => true, :encoding => 'ISO-8859-1')

score_text = File.read(Rails.root.join('lib', 'seeds', 'scores.csv'))
score_csv = CSV.parse(score_text, :headers => true, :encoding => 'ISO-8859-1')

skater_text = File.read(Rails.root.join('lib', 'seeds', 'skaters.csv'))
skater_csv = CSV.parse(skater_text, :headers => true, :encoding => 'ISO-8859-1')

group_csv.each do |row|
  t = Group.new
  t.name = row['group']
  t.html_name = row['htmlname']
  t.save!
  puts "#{t.name}, #{t.html_name} saved"
end

levels_csv.each do |row|
  l = Level.new
  l.name = row['lvl']
  l.html_name = row['htmlname']
  l.group_id = row['grp']
  l.save!
  l.errors
  puts "#{l.name} saved"
end

event_csv.each do |row|
  t = Event.new
  t.name = row['evtn']
  t.html_name = row['htmlname']
  t.level_id = row['lvl']
  t.save!
  puts "#{t.name} saved"
end

score_type_csv.each do |row|
  t = ScoreType.new
  t.score_type = row['scoretype']
  t.save!
  puts "#{t.score_type} saved"
end

segments_csv.each do |row|
  t = Segment.new
  t.name = row['segmenttype']
  t.save!
end

segmentevent_csv.each do |row|
  t = SegmentEvent.new
  t.segment_id = row['segment']
  t.event_id = row['event']
  t.save!
end

segmentscore_csv.each do |row|
  t = SegmentScoreType.new
  t.segment_id = row['segmenttype']
  t.score_type_id = row['scoretype']
  t.save!
end

comp_csv.each do |row|
  t = Competition.new
  t.name = row['nm']
  t.save!
end

skater_csv.each do |row|
  t = Skater.new
  t.first_name = row['f_name']
  t.last_name = row['l_name']
  t.save!
end


score_csv.each do |row|
  puts row.to_hash
  
  t = Score.new
  t.event_id = row['evt']
  t.segment_id = row['seg']
  t.score_type_id = row['scr_typ']
  t.competition_id = row['comp']
  t.score = row['scr']
  t.skater1 = row['s1']
  t.skater2 = row['s2']
  t.skater3 = row['s3']
  t.skater4 = row['s4']
  t.team_name = row['tn']
  t.achieved = row['yr']
  
  t.save!
end

puts "Groups = #{Group.count} rows"
puts "Levels = #{Level.count} rows"
puts "Events = #{Event.count} rows"
puts "ScoreType = #{ScoreType.count} rows"
puts "Segment = #{Segment.count} rows"
puts "SegmentEvent = #{SegmentEvent.count} rows"
puts "SegmentScore = #{SegmentScoreType.count} rows"
puts "Competition = #{Competition.count} rows"
puts "Scores = #{Score.count} rows"