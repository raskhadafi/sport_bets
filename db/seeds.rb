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
  {
    opponent_a: polen,
    opponent_b: greek,
    place:      warschau,
    kickoff:    DateTime.strptime('08.06.2012 18:00', '%d.%m.%Y %H:%M'),
    group:      group_a
  },
  {
    opponent_a: russia,
    opponent_b: czech,
    place:      breslau,
    kickoff:    DateTime.strptime('08.06.2012 20:45', '%d.%m.%Y %H:%M'),
    group:      group_a
  },
  {
    opponent_a: greek,
    opponent_b: czech,
    place:      breslau,
    kickoff:    DateTime.strptime('12.06.2012 18:00', '%d.%m.%Y %H:%M'),
    group:      group_a
  },
  {
    opponent_a: polen,
    opponent_b: russia,
    place:      warschau,
    kickoff:    DateTime.strptime('12.06.2012 20:45', '%d.%m.%Y %H:%M'),
    group:      group_a
  },
 {
    opponent_a: czech,
    opponent_b: polen,
    place:      breslau,
    kickoff:    DateTime.strptime('16.06.2012 20:45', '%d.%m.%Y %H:%M'),
    group:      group_a
  },
  {
    opponent_a: greek,
    opponent_b: russia,
    place:      warschau,
    kickoff:    DateTime.strptime('16.06.2012 20:45', '%d.%m.%Y %H:%M'),
    group:      group_a
  },
  {
    opponent_a: nederland,
    opponent_b: danemark,
    place:      charkiw,
    kickoff:    DateTime.strptime('09.06.2012 18:00', '%d.%m.%Y %H:%M'),
    group:      group_b
  },
  {
    opponent_a: germany,
    opponent_b: portugal,
    place:      lemberg,
    kickoff:    DateTime.strptime('09.06.2012 20:45', '%d.%m.%Y %H:%M'),
    group:      group_b
  },
  {
    opponent_a: danemark,
    opponent_b: portugal,
    place:      lemberg,
    kickoff:    DateTime.strptime('13.06.2012 18:00', '%d.%m.%Y %H:%M'),
    group:      group_b
  },
  {
    opponent_a: nederland,
    opponent_b: germany,
    place:      charkiw,
    kickoff:    DateTime.strptime('13.06.2012 20:45', '%d.%m.%Y %H:%M'),
    group:      group_b
  },
 {
    opponent_a: portugal,
    opponent_b: nederland,
    place:      charkiw,
    kickoff:    DateTime.strptime('17.06.2012 20:45', '%d.%m.%Y %H:%M'),
    group:      group_b
  },
  {
    opponent_a: danemark,
    opponent_b: germany,
    place:      lemberg,
    kickoff:    DateTime.strptime('17.06.2012 20:45', '%d.%m.%Y %H:%M'),
    group:      group_b
  },
  {
    opponent_a: spain,
    opponent_b: italy,
    place:      danzig,
    kickoff:    DateTime.strptime('10.06.2012 18:00', '%d.%m.%Y %H:%M'),
    group:      group_c
  },
  {
    opponent_a: irland,
    opponent_b: croatia,
    place:      posen,
    kickoff:    DateTime.strptime('10.06.2012 20:45', '%d.%m.%Y %H:%M'),
    group:      group_c
  },
  {
    opponent_a: italy,
    opponent_b: croatia,
    place:      posen,
    kickoff:    DateTime.strptime('14.06.2012 18:00', '%d.%m.%Y %H:%M'),
    group:      group_c
  },
  {
    opponent_a: spain,
    opponent_b: irland,
    place:      danzig,
    kickoff:    DateTime.strptime('14.06.2012 20:45', '%d.%m.%Y %H:%M'),
    group:      group_c
  },
 {
    opponent_a: croatia,
    opponent_b: spain,
    place:      danzig,
    kickoff:    DateTime.strptime('18.06.2012 20:45', '%d.%m.%Y %H:%M'),
    group:      group_c
  },
  {
    opponent_a: italy,
    opponent_b: irland,
    place:      posen,
    kickoff:    DateTime.strptime('17.06.2012 20:45', '%d.%m.%Y %H:%M'),
    group:      group_c
  },
  {
    opponent_a: france,
    opponent_b: england,
    place:      donezk,
    kickoff:    DateTime.strptime('11.06.2012 18:00', '%d.%m.%Y %H:%M'),
    group:      group_d
  },
  {
    opponent_a: ukraine,
    opponent_b: sweden,
    place:      kiew,
    kickoff:    DateTime.strptime('11.06.2012 20:45', '%d.%m.%Y %H:%M'),
    group:      group_d
  },
  {
    opponent_a: ukraine,
    opponent_b: france,
    place:      donezk,
    kickoff:    DateTime.strptime('15.06.2012 18:00', '%d.%m.%Y %H:%M'),
    group:      group_d
  },
  {
    opponent_a: sweden,
    opponent_b: england,
    place:      kiew,
    kickoff:    DateTime.strptime('15.06.2012 20:45', '%d.%m.%Y %H:%M'),
    group:      group_c
  },
 {
    opponent_a: england,
    opponent_b: ukraine,
    place:      donezk,
    kickoff:    DateTime.strptime('19.06.2012 20:45', '%d.%m.%Y %H:%M'),
    group:      group_c
  },
  {
    opponent_a: sweden,
    opponent_b: france,
    place:      kiew,
    kickoff:    DateTime.strptime('19.06.2012 20:45', '%d.%m.%Y %H:%M'),
    group:      group_c
  }
].each do |match|
  Match.create(match)
end
