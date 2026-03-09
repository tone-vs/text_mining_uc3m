## Creating the Baraka poem dataset


library(tidyverse)

# Function to clean the whitespace between the lines making it easier to split them
clean_poem <- function(text) {
  lines <- unlist(str_split(text, "\n"))
  lines <- str_trim(lines)
  lines <- lines[lines != ""]
  paste(lines, collapse = "\n")
}



# Raw poem texts 
sos_raw <- "Calling all black people 
           Calling all black people, man woman child 
           Wherever you are, calling you, urgent, come in 
           Black People, come in, wherever you are, urgent, calling you, calling all black people 
           calling all black people, come in, black people, come on in."

kaba_raw <- "A closed window looks down
           on a dirty courtyard, and black people
           call across or scream or walk across
           defying physics in the stream of their will
           Our world is full of sound
           Our world is more lovely than anyone's 
           tho we suffer, and kill each other
           and sometimes fail to walk the air
           We are beautiful people 
           with african imaginations
           full of masks and dances and swelling chants
           with african eyes, and noses, and arms,
           though we sprawl in grey chains in a place
           full of winters, when what we want is sun.
           We have been captured,
           brothers. And we labor
           to make our getaway, into
           the ancient image, into a new
           correspondence with ourselves
           and our black family. We read magic
           now we need the spells, to rise up
           return, destroy, and create. What will be
           the sacred words?"

somebody_raw <- "They say its some terrorist, some barbaric Arab in Afghanistan
It wasn't our American terrorists
It wasn't the Klan or the skinheads
Or the them that blows up nigger churches
Or reincarnates us on Death Row
It wasn't Trent Lott
Or David Duke or Giuliani
Or Schundler, Helms retiring

It wasn't the gonorrhea in costume
The white sheet diseases that have murdered black people
Terrorized reason and sanity
Most of humanity, as they pleases

They say (who say?)
Who do the saying
Who is them paying
Who tell the lies
Who in disguise
Who had the slaves
Who got the bucks out the Bucks

Who got fat from plantations
Who genocided Indians
Tried to waste the Black nation


Who live on Wall Street, the first plantation?
Who cut your nuts off
Who rape your ma
Who lynched your pa

Who got the tar, who got the feathers
Who had the match, who set the fires
Who killed and hired
Who say they God, and still be the Devil

Who the biggest only
Who the most goodest
Who do Jesus resemble

Who created everything
Who the smartest
Who the greatest
Who the richest
Who say you ugly and they the goodlookinest

Who define art
Who define science

Who made the bombs
Who made the guns
Who bought the slaves, who sold them

Who called you them names
Who say Dahmer wasn't insane

Who? Who? Who?

Who stole Puerto Rico
Who stole the Indies, the Philippines, Manhattan
Australia & The Hebrides
Who forced opium on the Chinese

Who own them buildings
Who got the money
Who think you funny
Who locked you up
Who own the papers

Who owned the slave ship

Who run the army

Who the fake president
Who the ruler
Who the banker

Who? Who? Who?

Who own the mine
Who twist your mind
Who got bread
Who need peace
Who you think need war

Who own the oil
Who do no toil
Who own the soil
Who is not a nigger
Who is so great ain't nobody bigger

Who own this city

Who own the air
Who own the water

Who own your crib
Who rob and steal and cheat and murder
and make lies the truth
Who call you uncouth

Who live in the biggest house
Who do the biggest crime
Who go on vacation anytime

Who killed the most niggers
Who killed the most Jews
Who killed the most Italians
Who killed the most Irish
Who killed the most Africans
Who killed the most Japanese
Who killed the most Latinos

Who? Who? Who?

Who own the ocean
Who own the airplanes
Who own the malls
Who own television
Who own radio

Who own what ain't even known to be owned
Who own the owners that ain't the real owners

Who own the suburbs
Who suck the cities
Who make the laws

Who made Bush president
Who believe the confederate flag need to be flying
Who talk about democracy and be lying

Who the Beast in Revelations
Who 666
Who know who decide
Jesus get crucified

Who the Devil on the real side
Who got rich from Armenian genocide

Who the biggest terrorist
Who change the bible
Who killed the most people
Who do the most evil
Who don't worry about survival

Who have the colonies
Who stole the most land
Who rule the world
Who say they good but only do evil
Who the biggest executioner

Who? Who? Who?

Who own the oil
Who want more oil
Who told you what you think that later you find out a lie

Who? Who? Who?

Who found Bin Laden, maybe they Satan
Who pay the CIA,
Who knew the bomb was gonna blow
Who know why the terrorists
Learned to fly in Florida, San Diego

Who know why Five Israelis was filming the explosion
And cracking they sides at the notion

Who need fossil fuel when the sun ain't goin' nowhere

Who make the credit cards
Who get the biggest tax cut
Who walked out of the Conference
Against Racism
Who killed Malcolm, Kennedy & his Brother
Who killed Dr King, Who would want such a thing?
Are they linked to the murder of Lincoln?

Who invaded Grenada
Who made money from apartheid
Who keep the Irish a colony
Who overthrow Chile and Nicaragua later

Who killed David Sibeko, Chris Hani,
the same ones who killed Biko, Cabral,
Neruda, Allende, Che Guevara, Sandino,

Who killed Kabila, the ones who wasted Lumumba, Mondlane,
Betty Shabazz, Die, Princess Di, Ralph Featherstone,
Little Bobby

Who locked up Mandela, Dhoruba, Geronimo,
Assata, Mumia, Garvey, Dashiell Hammett, Alphaeus Hutton

Who killed Huey Newton, Fred Hampton,
Medgar Evers, Mikey Smith, Walter Rodney,
Was it the ones who tried to poison Fidel
Who tried to keep the Vietnamese Oppressed

Who put a price on Lenin's head

Who put the Jews in ovens,
and who helped them do it
Who said America First
and ok'd the yellow stars

Who killed Rosa Luxembourg, Liebneckt
Who murdered the Rosenbergs
And all the good people iced,
tortured, assassinated, vanished

Who got rich from Algeria, Libya, Haiti,
Iran, Iraq, Saudi, Kuwait, Lebanon,
Syria, Egypt, Jordan, Palestine,

Who cut off peoples hands in the Congo
Who invented Aids
Who put the germs
In the Indians' blankets
Who thought up The Trail of Tears

Who blew up the Maine
& started the Spanish American War
Who got Sharon back in Power
Who backed Batista, Hitler, Bilbo,
Chiang kai Chek

Who decided Affirmative Action had to go
Reconstruction, The New Deal,
The New Frontier, The Great Society,

Who do Tom Ass Clarence Work for
Who doo doo come out the Colon's mouth
Who know what kind of Skeeza is a Condoleeza
Who pay Connelly to be a wooden negro
Who give Genius Awards to Homo Locus
Subsidere

Who overthrew Nkrumah, Bishop,
Who poison Robeson,
who try to put DuBois in Jail
Who frame Rap Jamil al Amin, Who frame the Rosenbergs,
Garvey,
The Scottsboro Boys,
The Hollywood Ten

Who set the Reichstag Fire

Who knew the World Trade Center was gonna get bombed
Who told 4000 Israeli workers at the Twin Towers
To stay home that day
Why did Sharon stay away?

Who? Who? Who?

Explosion of Owl the newspaper say
The devil face cd be seen

Who make money from war
Who make dough from fear and lies
Who want the world like it is
Who want the world to be ruled by imperialism and national
oppression and terror violence, and hunger and poverty.

Who is the ruler of Hell?
Who is the most powerful

Who you know ever
Seen God?

But everybody seen
The Devil

Like an Owl exploding
In your life in your brain in your self
Like an Owl who know the devil
All night, all day if you listen, Like an Owl
Exploding in fire. We hear the questions rise
In terrible flame like the whistle of a crazy dog

Like the acid vomit of the fire of Hell
Who and Who and WHO who who
Whoooo and Whooooooooooooooooooooo!"

# tibble with clean text
baraka_poems <- tibble(
  poet = "Amiri Baraka",
  poem = c("SOS", "Ka'Ba", "Somebody Blew Up America"),
  text = map_chr(list(sos_raw, kaba_raw, somebody_raw), clean_poem)
)


# creating dtaatset where each row is one one line, with line number within poem
baraka_lines <- baraka_poems |>
  mutate(lines = map(text, ~ str_split(.x, "\n")[[1]])) |>
  unnest(lines) |>
  rename(line = lines) |>
  group_by(poem) |>
  mutate(line_number = row_number()) |>
  ungroup() |>
  select(poet, poem, line_number, line)

## sources:
#https://genius.com/Amiri-baraka-somebody-blew-up-america-annotated
#https://genius.com/Amiri-baraka-sos-annotated
#https://www.becauseofthemwecan.com/5-must-read-poems-by-amiri-baraka-that-will-change-your-outlook-on-life-forever/

