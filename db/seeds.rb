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



score_text = File.read(Rails.root.join('lib', 'seeds', 'scores.csv'))
score_csv = CSV.parse(score_text, :headers => true, :encoding => 'ISO-8859-1')


group_csv.each do |row|
  t = Group.new
  t.group_name = row['group']
  t.html_name = row['htmlname']
  t.save!
  puts "#{t.group_name}, #{t.html_name} saved"
end

levels_csv.each do |row|
  l = Level.new
  l.level = row['lvl']
  l.html_name = row['htmlname']
  l.group_id = row['grp']
  l.save!
  l.errors
  puts "#{l.level} saved"
end

event_csv.each do |row|
  t = Event.new
  t.event_name = row['evtn']
  t.html_name = row['htmlname']
  t.level_id = row['lvl']
  t.save!
  puts "#{t.event_name} saved"
end

score_type_csv.each do |row|
  t = ScoreType.new
  t.score_type = row['scoretype']
  t.save!
  puts "#{t.score_type} saved"
end

segments_csv.each do |row|
  t = Segment.new
  t.segment_type = row['segmenttype']
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

score_csv.each do |row|
  puts row.to_hash
  
  t = Score.new
  t.event_id = row['evt']
  t.segment_id = row['seg']
  t.score_type_id = row['scr_typ']
  t.score = row['scr']
  t.skater1 = row['s1']
  t.skater2 = row['s2']
  t.skater3 = row['s3']
  t.skater4 = row['s4']
  t.team_name = row['tn']
  t.competition = row['comp']
  t.year = row['yr']
  
  t.save!
end

puts "Groups = #{Group.count} rows"
puts "Levels = #{Level.count} rows"
puts "Events = #{Event.count} rows"
puts "ScoreType = #{ScoreType.count} rows"
puts "Segment = #{Segment.count} rows"
puts "SegmentEvent = #{SegmentEvent.count} rows"
puts "SegmentScore = #{SegmentScoreType.count} rows"
puts "Scores = #{Score.count} rows"