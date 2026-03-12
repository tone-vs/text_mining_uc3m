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

incident_raw <- "He came back and shot. He shot him. When he came
back, he shot, and he fell, stumbling, past the
shadow wood, down, shot, dying, dead, to full halt.

At the bottom, bleeding, shot dead. He died then, there
after the fall, the speeding bullet, tore his face
and blood sprayed fine over the killer and the grey light.

Pictures of the dead man, are everywhere. And his spirit
sucks up the light. But he died in darkness darker than
his soul and everything tumbled blindly with him dying

down the stairs.

We have no word

on the killer, except he came back, from somewhere
to do what he did. And shot only once into his victim's
stare, and left him quickly when the blood ran out. We know

the killer was skillful, quick, and silent, and that the victim
probably knew him. Other than that, aside from the caked sourness
of the dead man's expression, and the cool surprise in the fixture

of his hands and fingers, we know nothing."

notes_raw <- "African blues
does not know me. Their steps, in sands
of their own
land. A country
in black & white, newspapers
blown down pavements
of the world. Does
not feel
what I am.

Strength

in the dream, an oblique
suckling of nerve, the wind
throws up sand, eyes
are something locked in
hate, of hate, of hate, to
walk abroad, they conduct
their deaths apart
from my own. Those
heads, I call
my 'people.'

(And who are they. People. To concern

myself, ugly man. Who
you, to concern
the white flat stomachs
of maidens, inside houses
dying. Black. Peeled moon
light on my fingers
move under
her clothes. Where
is her husband. Black
words throw up sand
to eyes, fingers of
their private dead. Whose
soul, eyes, in sand. My color
is not theirs. Lighter, white man
talk. They shy away. My own
dead souls, my, so called
people. Africa
is a foreign place. You are
as any other sad man here
american."

legacy_raw <- "In the south, sleeping against
the drugstore, growling under
the trucks and stoves, stumbling
through and over the cluttered eyes
of early mysterious night. Frowning
drunk waving moving a hand or lash.
Dancing kneeling reaching out, letting
a hand rest in shadows. Squatting
to drink or pee. Stretching to climb
pulling themselves onto horses near
where there was sea (the old songs
lead you to believe). Riding out
from this town, to another, where
it is also black. Down a road
where people are asleep. Towards
the moon or the shadows of houses.
Towards the songs' pretended sea."

blackhearts_raw <- "For Malcolm's eyes, when they broke
the face of some dumb white man, For
Malcolm's hands raised to bless us
all black and strong in his image
of ourselves, For Malcolm's words
fire darts, the victor's tireless
thrusts, words hung above the world
change as it may, he said it, and
for this he was killed, for saying,
and feeling, and being/ change, all
collected hot in his heart, For Malcolm's
heart, raising us above our filthy cities,
for his stride, and his beat, and his address
to the grey monsters of the world, For Malcolm's
pleas for your dignity, black men, for your life,
black man, for the filling of your minds
with righteousness, For all of him dead and
gone and vanished from us, and all of him which
clings to our speech black god of our time.
For all of him, and all of yourself, look up,
black man, quit stuttering and shuffling, look up,
black man, quit whining and stooping, for all of him,
For Great Malcolm a prince of the earth, let nothing in us rest
until we avenge ourselves for his death, stupid animals
that killed him, let us never breathe a pure breath if
we fail, and white men call us faggots till the end of
the earth."

blackart_raw <- "Poems are bullshit unless they are
Teeth or trees or lemons piled
On a step. Or black ladies dying
Of men leaving nickel hearts
Beating them down. Fuck poems
And they are useful, would they shoot
Come at you, love what you are,
Breathe like wrestlers, or shudder
Strangely after peeing. We want live
Words of the hip world live flesh &
Coursing blood. Hearts Brains
Souls splintering fire. We want poems
Like fists beating niggers out of Jocks
Or dagger poems in the slimy bellies
Of the owner-jews. Black poems to
Smear on girdlemamma mulatto bitches
Whose brains are red jelly stuck
Between lizabeth taylor's toes. Stinking
Whores! we want poems that kill.
Assassin poems, Poems that shoot
Guns. Poems that wrestle cops into alleys
And take their weapons leaving them dead
With tongues pulled out and sent to Ireland. Knockoff
Poems for dope selling wops or slick halfwhite
Politicians Airplane poems, rrrrrrrrrrrrrrrr
Rrrrrrrrrrrrrrr . . .tuhtuhtuhtuhtuhtuhtuhtuhtuhtuh
. . .rrrrrrrrrrrrrrrr . . . Setting fire and death to
Whities ass. Look at the Liberal
Spokesman for the jews clutch his throat
& puke himself into eternity . . . rrrrrrrr
There's a negroleader pinned to
A bar stool in Sardi's eyeballs melting
In hot flame Another negroleader
On the steps of the white house one
Kneeling between the sheriff's thighs
Negotiating coolly for his people.
Aggh . . . stumbles across the room . . .
Put it on him, poem! Strip him naked
To the world! Another bad poem cracking
Steel knuckles in a jewlady's mouth
Poem scream poison gas on beasts in green berets
Clean out the world for virtue and love,
Let there be no love poems written
Until love can exist freely and
Cleanly. Let Black people understand
That they are the lovers and the sons
Of warriors and sons
Of warriors Are poems & poets &
All the loveliness here in the world"

we_americans_raw <- c(" Why is We Americans? Why is We Americans?

Bu-de-daaaa. Bu-de-daaaa. Bu-de-daaaa. Bu-de-daaaa. Bu-do-do. Be-De-De-De-Bu-De-Bu-Bup-Boo-Boo.

What I want is me. For real. I want me and my self. And what that is is what I be and what I see and feel and who is me in the. What it is, is who it is, and when it me its what is be….I’m gone be here, if I want, like I said, self determination, but I ain’t come from a foolish tribe, we wants the mule the land, you can make it three hundred years of blue chip stock in the entire operation. We want to be paid, in a central bank the average worker farmer wage for all those years we gave it free. Plus we want damages, for all the killings and the fraud, the lynchings, the missing justice, the lies and frame-ups, the unwarranted jailings, the tar and featherings, the character and race assassinations. historical slander, ugly caricatures, for every sambo, step and fechit flick, we want to be paid, for every hurtful thing you did or said. For all the land you took, for all the rapes, all the rosewoods and black wall streets you destroyed. All the mis-education, jobs loss, segregated shacks we lived in, the disease that ate and killed us, for all the mad police that drilled us. For all the music and dances you stole. The styles. The language. The hip clothes you copped. The careers you stopped. All these are suits, specific litigation, as represent we be like we, for reparations for damages paid to the Afro-American nation.

Bu-de-daaaa. Bu-de-daaaa. Bu-de-daaaa.

We want education for all of us and anyone else in the black belt hurt by slavery. For all the native peoples even them poor white people you show all the time as funny, all them abners and daisy maes, them Beverly Hill Billies who never got to no beverly hills. who never got to Harvard on they grandfathers wills. we want reparations for them, right on, for the Mexicans whose land you stole. For all of North Mexico you call Texas, Arizona, California, New Mexico, Colorado, all that, all that, all that, all that, Bu-de-daaaa do do bap bap bap baaa du de do.
All that you gotta give up, autonomy and reparations. To the Chicanos, and the Native Americans, who souls you ripped out with their land, give Self-Determination, Regional autonomy, that’s what my we is askin, and they gon do the same. when they demand it, like us again, in they own exploited name. Yeh the education that’s right two hundred…years. We want a central stash, a central bank, with democratically elected trustees, and a board elected by us all, to map out, from the referendum we set up, what we want to spend it on. To build that Malcolm sense Self-Determination as Self-Reliance and Self Respect and Self Defense, the will of what the good Dr. Du Bois beat on – true self consciousness. Simply the psychology of Freedom.

Bu-de-daaaa Bu-de-daaaa Pu de-daaaa Pu de-daaaa bap bap bap bap bu de bu de bu de bu bu.

Then we can talk about bein American. Then we can listen – then we can listen without the undercurrent of desire to first set your ass on fire. We will only talk of voluntary unity, of autonomy, as vective arms of self-determination. If there is democracy in you that is where it will be shown. this is the only way we is Americans. This is the only truth that can be told. OTHERWISE there is no future between us but war. And we is rather lovers and singers and dancers and poets and drummers and actors and runners and elegant heartbeats of the suns flame….but we is also to the end of our silence and sitdown. We is at the end of being under your ignorant smell your intentional hell. Either give us our lives or plan to forfeit your own.")

survive_raw <- c("Who will survive in America?
Few Americans
Very few Negroes
No crackers at all

Will you survive in America
With your 20 cent habit?
Yo, 4-bag Jones, will you
Survive in the heat and fire
Of actual change? I doubt it

Will you survive, woman? Or will your nylon wig
Catch afire at midnight and light up Stirling Street
And your assprints on the pavement. Grease melting in this
Brother's eyes, his profile shot up by a Simba thinking
Who was coming around the corner was really Tony Curtis
And not a misguided brother, got his mind hanging out with Italians

Who will survive?
The black future will
You can't with the fat stomach between your ears
Scraping nickels out the inside of nigger daydreams
Few Americans
Very few Negroes...maybe no Red Negroes at all

The stiffbacked chalklady baptist, in blue lace
If she shrinks from blackness in front of the church
Following the wedding of the yellow robots
Will not survive. She is old anyway, and they're moving
Her church in the wind
Old people? No
Christians? No
First Negroes to be invisible to Truth, 1944, Minnesota? No
Nothing of that will be anywhere
It will be burned clean
It might sink and steam up the sea. America might
And no Americans, very few Negroes, will get out
No crackers at all
But the black man will survive America
His survival will mean the death of America
Survive Blackman! Survive Blackman! Survive Blackman!
(Black woman too)
Let us all survive, who need to OK?
And we wish each other luck!")


# tibble with clean text
baraka_poems <- tibble(
  poet = "Amiri Baraka",
  poem = c("SOS", "Ka'Ba", "Somebody Blew Up America", "Incident", "Notes for a Speech",
           "Legacy", "A Poem for Black Hearts", "Black Art", "Why are we Americans", 
           "Who will survive America"),
  text = map_chr(list(sos_raw, kaba_raw, somebody_raw, incident_raw, notes_raw, 
                      legacy_raw, blackhearts_raw, blackart_raw, we_americans_raw, survive_raw), clean_poem)
)


# creating datatset where each row is one one line, with line number within poem
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
#https://www.poemhunter.com/amiri-baraka/#google_vignette
#https://genius.com/Amiri-baraka-a-poem-for-black-hearts-annotated
# https://genius.com/Amiri-baraka-black-art-annotated