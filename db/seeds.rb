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

starlvl_text = File.read(Rails.root.join('lib', 'seeds', 'starlevels.csv'))
starlvl_csv = CSV.parse(starlvl_text, :headers => true, :encoding => 'ISO-8859-1')

startest_text = File.read(Rails.root.join('lib', 'seeds', 'startests.csv'))
startest_csv = CSV.parse(startest_text, :headers => true, :encoding => 'ISO-8859-1')

award_text = File.read(Rails.root.join('lib', 'seeds', 'awards.csv'))
award_csv = CSV.parse(award_text, :headers => true, :encoding => 'ISO-8859-1')

teams_text = File.read(Rails.root.join('lib', 'seeds', 'teams.csv'))
teams_csv = CSV.parse(teams_text, :headers => true, :encoding => 'ISO-8859-1')

award_types_text = File.read(Rails.root.join('lib', 'seeds', 'award_types.csv'))
award_types_csv = CSV.parse(award_types_text, :headers => true, :encoding => 'ISO-8859-1')

club_awards_text = File.read(Rails.root.join('lib', 'seeds', 'club_awards.csv'))
club_awards_csv = CSV.parse(club_awards_text, :headers => true, :encoding => 'ISO-8859-1')

goves_text = File.read(Rails.root.join('lib', 'seeds', 'goves.csv'))
goves_csv = CSV.parse(goves_text, :headers => true, :encoding => 'ISO-8859-1')


group_csv.each do |row|
  t = Group.new
  t.name = row['group']
  t.html_name = row['htmlname']
  t.save!
end
puts "Groups = #{Group.count} rows"

levels_csv.each do |row|
  l = Level.new
  l.name = row['lvl']
  l.html_name = row['htmlname']
  l.group_id = row['grp']
  l.save!
end
puts "Levels = #{Level.count} rows"

event_csv.each do |row|
  t = Event.new
  t.name = row['evtn']
  t.html_name = row['htmlname']
  t.level_id = row['lvl']
  t.save!
end
puts "Events = #{Event.count} rows"


score_type_csv.each do |row|
  t = ScoreType.new
  t.score_type = row['scoretype']
  t.save!
end
puts "ScoreType = #{ScoreType.count} rows"

segments_csv.each do |row|
  t = Segment.new
  t.name = row['segmenttype']
  t.save!
end
puts "Segment = #{Segment.count} rows"

segmentevent_csv.each do |row|
  t = SegmentEvent.new
  t.segment_id = row['segment']
  t.event_id = row['event']
  t.save!
end
puts "SegmentEvent = #{SegmentEvent.count} rows"

segmentscore_csv.each do |row|
  t = SegmentScoreType.new
  t.segment_id = row['segmenttype']
  t.score_type_id = row['scoretype']
  t.save!
end
puts "SegmentScore = #{SegmentScoreType.count} rows"

comp_csv.each do |row|
  t = Competition.new
  t.name = row['nm']
  t.save!
end
puts "Competition = #{Competition.count} rows"

skater_csv.each do |row|
  t = Skater.new
  t.first_name = row['f_name']
  t.last_name = row['l_name']
  t.save!
end
puts "Skater =  #{Skater.count} rows"

starlvl_csv.each do |row|
  t = StarLevel.new
  t.level = row['lvl']
  t.save!
end
puts "StarLevel =  #{StarLevel.count} rows"

startest_csv.each do |row|
  t = StarTest.new
  t.star_level_id = row['lvlid']
  t.name = row['tst']
  t.save!
end
puts "StarTest =  #{StarTest.count} rows"

award_types_csv.each do |row|
  t = AwardType.new
  t.name = row['awrd_typ']
  t.save!
end
puts "AwardType =  #{AwardType.count} rows"

award_csv.each do |row|
  t = Award.new
  t.name = row['awrd']
  t.award_type_id = row['typ']
  t.save!
end
puts "Awards =  #{Award.count} rows"

club_awards_csv.each do |row|
  t = ClubAward.new
  t.skater_id = row['n']
  t.award_id = row['awrd']
  t.year = row['yr']
  t.save!
end
puts "Club Awards = #{ClubAward.count} rows"


teams_csv.each do |row|
  t = Team.new
  t.name = row['tn']
  t.save!
end
puts "Teams = #{Team.count} rows"

goves_csv.each do |row|
  t = Gofe.new
  #puts row.to_hash
  t.level_id = row['lvl_id']
  t.event_id = row['evnt_id']
  t.segment_id = row['seg']
  t.competition_id = row['comp_id']
  t.element = row['elm']
  t.skater1 = row['s1']
  t.skater2 = row['s2']
  t.grade = row['gr']
  t.achieved = row['ach']
  t.save!
end
puts "GOEs = #{Gofe.count} rows"


score_csv.each do |row|
  #puts row.to_hash
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
  t.achieved = row['ach']
  
  t.save!
end
puts "Scores = #{Score.count} rows"