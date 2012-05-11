# encoding: utf-8

I18n.locale = 'de-CH'

polen     = Team.create(name: 'Polen')
russia    = Team.create(name: 'Russland')
greek     = Team.create(name: 'Griechenland')
czech     = Team.create(name: 'Tschechien')
nederland = Team.create(name: 'Niederlande')
germany   = Team.create(name: 'Deutschland')
danemark  = Team.create(name: 'Dänemark')
portugal  = Team.create(name: 'Portugal')
spain     = Team.create(name: 'Spanien')
irland    = Team.create(name: 'Irland')
italy     = Team.create(name: 'Italien')
croatia   = Team.create(name: 'Kroatien')
ukraine   = Team.create(name: 'Ukraine')
france    = Team.create(name: 'Frankreich')
sweden    = Team.create(name: 'Schweden')
england   = Team.create(name: 'England')

warschau = Place.create(name: 'Warschau')
breslau  = Place.create(name: 'Breslau')
charkiw  = Place.create(name: 'Charkiw')
lemberg  = Place.create(name: 'Lemberg')
danzig   = Place.create(name: 'Danzig')
posen    = Place.create(name: 'Posen')
donezk   = Place.create(name: 'Donezk')
kiew     = Place.create(name: 'Kiew')

group_a = Group.create(name: 'Gruppe A')
group_b = Group.create(name: 'Gruppe B')
group_c = Group.create(name: 'Gruppe C')
group_d = Group.create(name: 'Gruppe D')

[
  {name: 'Viertelfinal'},
  {name: 'Halbfinal'},
  {name: 'Final'}
].each do |group|
  Group.create(group)
end

[
  {opponent_a: polen, opponent_b: greek, place: warschau, kickoff: DateTime.strptime('08.06.2012 18:00', '%d.%m.%Y %H:%M')}
].each do |match|
  Match.create(match)
end
