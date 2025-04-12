VAR trusts_necklace = false

-> woods

=== woods ===
Scarlett, a spunky 9‐year‐old, bounces through the woods one afternoon. She spots something shiny—a glowing necklace caught in some gnarly roots. It’s humming, like it’s alive!
* [Snag it] -> necklace_found
* [Nope, I’m outta here] -> ending_safe

=== necklace_found ===
Scarlett slips it on. {shuffle:
- "Leaves swirl like crazy."
- "The air smells like candy for a sec."
- "A bird screeches and takes off."
}
Then—bam!—a creepy wizard with red eyes pops out of a swirly portal. "Hand it over, kid!"
* "This necklace is mine now!" [Scarlett decides to trust it]
    ~ trusts_necklace = true
    -> portal_jump
* "You’re not the boss of me!" [RUN] -> running
* [Duck and cover] -> hiding

=== running ===
Scarlett tears through the trees, heart pounding. The necklace starts glowing like a firefly on turbo. That wizard’s cackle isn’t far behind.
* [Don’t stop now] -> ending_escape
* {trusts_necklace} [Spin around and try the necklace] -> portal_jump

=== hiding ===
She dives behind a bush, barely breathing. The wizard’s boots snap twigs way too close.
* [Freeze like a statue] -> ending_caught
* [Crawl away] -> running

=== portal_jump ===
The necklace sparks and—poof!—a portal rips open. Scarlett dives in, landing in:
{shuffle:
- a forest made of gooey candy -> candy_forest
- an island floating in the sky -> float_island
- a maze of wobbly mirrors -> mirror_maze
}

=== candy_forest ===
Everything’s sticky and sweet—trees drip with syrup! The necklace buzzes in her ear:
Ooh, yummy magic’s close!
One bite might do the trick!
Watch out, it’s a sticky mess!
* [Chomp some candy] -> ending_caught
* [Dash back to the portal] -> wizard_fight
* {trusts_necklace} [Yell at the necklace for help!] -> ending_hero

=== float_island ===
Scarlett’s on a chunk of rock floating above fluffy clouds. The necklace hums:
{cycle:
- "Wings’d be nice, huh?"
- "Ride the breeze, kiddo."
- "Up, up, and away!"
}
* [Leap off the edge] -> ending_escape
* [Head back through the portal] -> wizard_fight
* {trusts_necklace} [Tell the wind to lift you] -> ending_hero

=== mirror_maze ===
Mirrors twist her reflection into goofy shapes. The necklace whispers:
{shuffle:
- "Peek behind the glass..."
- "Smash it and see!"
- "You’re braver than you look."
}
* [Bash a mirror] -> ending_caught
* [Scramble back] -> wizard_fight
* {trusts_necklace} [Make the necklace glow brighter] -> ending_hero

=== wizard_fight ===
The wizard’s waiting by the portal, smirking. "End of the line, squirt!"
* [Chuck the necklace at his face] -> ending_escape
* [Wave a white flag] -> ending_caught
* {trusts_necklace} [Zap him with a magic blast] -> ending_hero

=== ending_safe ===
Scarlett hightails it home, panting but safe. She can’t stop thinking about that glowy thing.
-> END

=== ending_escape ===
Scarlett slips away, necklace still buzzing. She’s in the clear—for today.
-> END

=== ending_caught ===
The wizard grabs the necklace and drags Scarlett off to his creepy world. Oops.
-> END

=== ending_hero ===
A big flash from the necklace sends the wizard packing. Scarlett’s the toughest 9‐year‐old ever!
-> END

