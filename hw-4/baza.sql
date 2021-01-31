CREATE TABLE film (
	id_filma INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    naslov VARCHAR(100) NOT NULL,
	opis VARCHAR(1100) NOT NULL,
    zanr VARCHAR(50) NOT NULL,
    reziser VARCHAR(100) NOT NULL,
    glavni_glumci VARCHAR(1000) NOT NULL,
    godina INT NOT NULL,
    slika VARCHAR(500) NOT NULL,
    duzina_trajanja VARCHAR(50) NOT NULL
);

INSERT INTO film (naslov, opis, zanr, scenarista, reziser, glavni_glumci, godina, slika, duzina_trajanja)
VALUES ("The Iron Lady",
 "An elderly Margaret Thatcher talks to the imagined presence of her recently deceased husband as she struggles to come to terms with his death while scenes from her past life, from girlhood to British prime minister, intervene.",
 " Biography",
 " Phyllida Lloyd",
 "Abi Morgan ",
 " Meryl Streep, Jim Broadbent, Richard E. Grant",
 2011,
 "image/1.jpg",
 "105min");
 
INSERT INTO film (naslov, opis, zanr, scenarista, reziser, glavni_glumci, godina, slika, duzina_trajanja)
VALUES ("Out of Africa",
 "In 20th-century colonial Kenya, a Danish baroness/plantation owner has a passionate love affair with a free-spirited big-game hunter.",
 "Drama,Romance",
 " Sydney Pollack",
 "Karen Blixen ",
 " Meryl Streep, Robert Redford, Klaus Maria Brandauer",
 1985,
 "image/2.jpg",
 "165min");
 
INSERT INTO film (naslov, opis, zanr, scenarista, reziser, glavni_glumci, godina, slika, duzina_trajanja)
VALUES ("The Visitors ",
 "A medieval knight and his servant ask a familiar wizard to move them back in time to prevent father-in-law's accidentally killing.",
 " Comedy,Fantasy",
 " Jean-Marie Poiré",
 " Christian Clavier, Jean-Marie Poiré",
 " Christian Clavier, Jean Reno, Valérie Lemercier",
 1993,
 "image/3.jpg",
 "107 min");

INSERT INTO film (naslov, opis, zanr, scenarista, reziser, glavni_glumci, godina, slika, duzina_trajanja)
VALUES ("The Silence of the Lambs",
 "A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.",
 "Drama,Thriller,Crime",
 "Jonathan Demme",
 "Thomas Harris",
 " Jodie Foster, Anthony Hopkins, Lawrence A. Bonney",
 1993,
 "image/4.jpg",
 "118 min");
 
INSERT INTO film (naslov, opis, zanr, scenarista, reziser, glavni_glumci, godina, slika, duzina_trajanja)
VALUES ("The Prestige",
 "After a tragic accident, two stage magicians engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.",
 "Drama, Mystery, Sci-Fi",
 "Jonathan Nolan, Christopher Nolan",
 "Christopher Nolan",
 "Touchstone Pictures (presents), Warner Bros. (presents), Newmarket Productions (as Newmarket Films), Syncopy.",
 "Hugh Jackman, Christian Bale, Michael Caine, Piper Perabo, Rebecca Hall, Scarlett Johansson, Samantha Mahurin, David Bowie, Andy Serkis.",
 2006,
 "image/5.jpg",
 "2h 10min");
 
INSERT INTO film (naslov, opis, zanr, scenarista, reziser, glavni_glumci, godina, slika, duzina_trajanja)
VALUES ("Colide",
 "An American backpacker gets involved with a ring of drug smugglers as their driver, though he winds up on the run from his employers across Cologne high-speed Autobahn.",
 "Drama,Action",
 " Eran Creevy",
 " F. Scott Frazier",
 "Nicholas Hoult, Felicity Jones, Anthony Hopkins",
 2016,
 "image/6.jpg",
 "99 min");
 
INSERT INTO film (naslov, opis, zanr, scenarista, reziser, glavni_glumci, godina, slika, duzina_trajanja)
VALUES ("The Wolf of Wall Street",
 "Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.",
 "Biography, Drama, Crimi",
 " Martin Scorsese",
 " Terence Winter (screenplay), Jordan Belfort (book)",
 "Leonardo DiCaprio, Jonah Hill, Margot Robbie",
 2013,
 "image/7.jpg",
 "182 min");
 

 
SELECT * FROM film;
DROP TABLE film;
CREATE TABLE ucesnici (
    id_registrovani INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ime VARCHAR(30) NOT NULL,
    prezime VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL UNIQUE,
    korisnicko_ime VARCHAR(30) NOT NULL UNIQUE,
    lozinka VARCHAR(30) NOT NULL,
    je_admin BOOLEAN NOT NULL
);

INSERT INTO ucesnici (ime, prezime, email, korisnicko_ime, lozinka, je_admin)
VALUES ("Admin", "An", "An@gmail.com", "admin", "sifra", true);

SELECT * FROM ucesnici;
DROP TABLE ucesnici;
