# Catalog Music on NodeJS with Postgresql 9.4
A simple api restful with NodeJS and Postgresql 9.4

1. git clone https://github.com/gabrielmeloarteaga/catalog-music-api-nodejs.git
2. create a database on postgresql called catalogmusic
3. dump the data with script database.sql
4. Type on console root folder: node app.js , this will show results like:

server listening on port 8000
[ { oid: 1,
    artist: 'poison',
    album: 'look what the cat dragged in',
    year: '1986' },
  { oid: 2,
    artist: 'guns n roses',
    album: 'appetite for destruction',
    year: '1988' },
  { oid: 3, artist: 'metallica', album: 'metallica', year: '1990' },
  { oid: 4,
    artist: 'heroes del silencio',
    album: 'el espiritu del vino',
    year: '1993' },
  { oid: 5,
    artist: 'megadeth',
    album: 'rust in peace',
    year: '1990' },
  { oid: 6,
    artist: 'black sabbath',
    album: 'Technical Ecstasy',
    year: '1976' },
  { oid: 7,
    artist: 'iron maiden',
    album: 'powerslave',
    year: '1984' },
  { oid: 8,
    artist: 'motley crue',
    album: 'dr feelgood',
    year: '1990' } ]

