/********************* Interjections *********************/

/********************* "Friendship" Path *********************/
//Talk 1 - Male Dislike
IF ~Global("QI#TelziFriendshipTalk","GLOBAL",2) Gender(Player1, MALE)~ TelziFriendshipTalk1.0Male
SAY ~I do not like males.~
= ~They reek of strong odors and think too highly of themselves.~
++ ~I agree.~ + tft1.0.1male
++ ~I was not put into this world for you to like me.~ + tft1.0.2male
++ ~I could care less what on you think of men.~ + tft1.0.3
++ ~Because men are the rulers of this world. We have and make kings and great leaders, what does your kind do?~ + tft1.0.4male
++ ~You are a troll - a monster! If you think I smell, then you haven't properly smelled yourself!~ + tft1.0.5
++ ~Then, don't talk to me.~ + tft1.0.0male
END

IF ~~ tft1.0.0male
SAY ~That is something I will not have a problem doing.~
IF ~~ DO ~SetGlobal("QI#TelziFriendshipActive","GLOBAL",1)~ EXIT
END

IF ~~ tft1.0.1male
SAY ~You would agree? I find that strange that a male would agree with this statement.~
= ~I expected resistance from your kind.~
++ ~No, I agree. My "kind" step out of their bounds, far too often, I might add.~ + tft1.0.1malea
++ ~I was just pulling your leg. I don't think that way about men.~ + tft1.0.1maleb
++ ~I neither disagree or agree.~ + tft1.0.1malec
END

IF ~~ tft1.0.1malea
SAY ~You show surprising intelligence.~
= ~Your kind could learn more from you.~
IF ~~ tft1.1
END

IF ~~ tft1.0.1maleb
SAY ~I did not feel a tugging sensation on my leg.~
= ~You lie.~
++ ~Uh, never mind.~ + tft1.1
END

IF ~~ tft1.0.1malec
SAY ~Typical.~
= ~You speak before you know what you have said.~
IF ~~ + tft1.1
END

IF ~~ tft1.0.2male
SAY ~You speak the truth.~
= ~However, it would not hurt for your kind to understand the perspectives of those who are not of the same gender.~
IF ~~ + tft1.1
END
  
IF ~~ tft1.0.4male
SAY ~That thinking is the reason why there is chaos in this world.~
= ~Males believe they provide law and order, but they only bring pain and suffering.~
IF ~~ + tft1.1
END

//Talk 1 - Female Version
IF ~Global("QI#TelziFriendshipTalk","GLOBAL",2) Gender(Player1, FEMALE)~ TelziFriendshipTalk1.0Female
SAY ~It is good to see a female as powerful and memorable as you. I do not like males.~
= ~They reek of strong odors and think too highly of themselves.~
++ ~I agree.~ + tft1.0.1female
++ ~I could care less on what you think of men.~ + tft1.0.2female
++ ~Because men are the rulers of this world. They have and make kings and great leaders, what does your kind do?~ + tft1.0.4female
++ ~You are a troll - a monster! If you think men smell, then you haven't properly smelled yourself!~ + tft1.0.5
++ ~I don't want to talk to you anymore, stop talking.~ + tft1.0.0female
END

IF ~~ tft1.0.0female
SAY ~I was a hoping a strong female like yourself would appreciate this talk.~
= ~But I see I was wrong about you.~
IF ~~ DO ~SetGlobal("QI#TelziFriendshipActive","GLOBAL",1)~ EXIT
END

IF ~~ tft1.0.1female
SAY ~I am glad to hear your agreement.~
IF ~~ + tft1.1
END

IF ~~ tft1.0.2female
SAY ~That may be true, but you cannot deny the way males present themselves.~
IF ~~ + tft1.1
END

IF ~~ tft1.0.4female
SAY ~It is appalling how the males have brainwashed you into thinking.~
IF ~~ + tft1.1
END

IF ~~ tft1.0.5
SAY ~A smell does not make a creature a monster.~
IF ~~ + tft1.1
END

IF ~~ tft1.1
SAY ~Males think they command the most respect, but they never stop to think properly.~
= ~Where would they be if females did not exist? It is said the greatest gift was given to the females by the gods - the gift of giving life to another.~
= ~Yet, males think they can control every thing everything they can touch.~
++ ~You speak as if you have experience with bad men.~ + tft1.2
+ ~Gender(PLAYER1, FEMALE)~ + ~Not every man is as evil as you think.~ + tft1.1.1female
+ ~Gender(PLAYER1, MALE)~ + ~Not every man is as evil as you think.~ + tft1.1.1male
++ ~Look, I really don't want to hear your opinions and your complaints about men.~ + tft1.1.2
END

IF ~~ tft1.1.1female
SAY ~That is what they want you to believe.~
IF ~~ + tft1.2
END

IF ~~ tft1.1.1male
SAY ~(snort) Is one male going to change my mind about the entirety of all males?~
= ~I do not that is likely.~
IF ~~ + tft1.2
END

IF ~~ tft1.1.2
SAY ~Then, you do not want to hear the truth.~
= ~Continue to be blind, I do not care.~
IF ~~ DO ~SetGlobal("QI#TelziFriendshipActive","GLOBAL",1)~ EXIT
END

IF ~~ tft1.2
SAY ~Men have taken much for me.~
= ~But this is not the time to tell.~
= ~Let us move on.~
IF ~~ DO ~IncrementGlobal("QI#TelziFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#TelziFriendshipTimer",2700)~ EXIT
END

//Talk 2 - The Reasoning
IF ~Global("QI#TelziFriendshipTalk","GLOBAL",4)~ TelziFriendshipTalk2.0
SAY ~Would you like to hear my personal experience with men and mages?~
++ ~Sure, go ahead and explain yourself.~ + tft2.1
++ ~Make this quick.~ + tf2.1
++ ~I don't have time for this right now. Maybe later?~ + tf2.0.1
++ ~No, and I don't want you to speak to me again.~ + tft2.0.2
END

IF ~~ tft2.0.1
SAY ~No. You need to hear it now.~
++ ~Fine. Go ahead.~ + tft2.1
++ ~Then, I don't want to hear what you have to say.~ + tft2.0.2
END

IF ~~ tft2.0.2
SAY ~Okay.~
= ~It is probably better this way.~
IF ~~ DO ~SetGlobal("QI#TelziFriendshipActive","GLOBAL",1)~ EXIT
END

IF ~~ tft2.1
SAY ~I was born to a troll and an elf.~
= ~The union was not meant to be. It was forced by a greedy male mage.~
= ~This is how I came to be. I was a prize for the male. He thought the child of a troll and an elf would have the consitution and the dexterity of each of its parent.~
= ~I was bred to fight in fights at a young age. Half trolls age quickly, so the male mage was always at an advantage when I fought against the others.~
++ ~Continue.~ + tft2.2
++ ~That sounds terrible.~ tft2.1.1
++ ~Who and what did you fight against?~ + tft2.1.2
++ ~I like where this mage was going with that idea.~ + tft2.1.3
++ ~That's what monsters are meant to do.~ + tft2.1.4
END

IF ~~ tft2.1.1
SAY ~It was a lot to take in, but failure to win a battle would mean many lashings. Sometimes, even death.~
IF ~~ + tft2.2
END

IF ~~ tft2.1.2
SAY ~Runty goblins, dwarves, and pointy-teeth halflings. Sometimes wild dogs and wolves. For the bonus round, there would be a group of scared and dirty children.~
IF ~~ + tft2.1.1
END

IF ~~ tft2.1.3
SAY ~He was right to assume the union of a troll and an elf would be good, but the male wizard was wrong to force the union.~
= ~He was pure evil.~
IF ~~ + tft2.2
END

IF ~~ tft2.1.4
SAY ~Monsters can do more than fight.~
IF ~~ + tft2.2
END

IF ~~ tft2.2
SAY ~As I grew older and more mature, the male mage noticed my changes. He called me "hideous" and "grotesque", but I saw his eyes stare at my body with desire.~
= ~So, he began to fix my face - starting with my nose.~
= ~He reconstructed my face, until I could not recognize myself when I looked at the puddles from the rain. The only thing that is from my original face is my eyes.~
= ~When he made me the way he liked, he stopped my fights and made me his pleasure slave to him and his male mage friends.~
= ~He would tell me he could do all this, because he was powerful and that was his will. He said all males had this right.~
= ~This is why I hate males, especially male mages.~
IF ~~ DO ~IncrementGlobal("QI#TelziFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#TelziFriendshipTimer",2700)~ EXIT
END

//Talk 3 - Relatability and Escape
IF ~Global("QI#TelziFriendshipTalk","GLOBAL",6)~ TelziFriendshipTalk3.0
SAY ~I am used to others point and stare at me. Some attempt to kill me too.~
= ~I think you can find this relatable.~
++ ~Yes, it's relatable. Although, I am used to it as well. In fact, I welcome it.~ + tft3.0.1
++ ~Yes, it's relatable. I'm not used to all this and sometimes I wish I was reading the dusty tomes in Candlekeep.~ + tft3.0.1
++ ~Heh, most people nowadays want to kill me too.~ + tft3.0.1
++ ~No, I don't think we are relatable. There is a difference to why people point and stare at us.~ + tft3.0.2
++ ~No, there is nothing relatable between us.~ + tft3.0.2
END

IF ~~ tft3.0.1
SAY ~I never liked attention.~
IF ~~ + tft3.1
END

IF ~~ tft3.0.2
SAY ~That could be true.~
IF ~~ + tft3.1
END

IF ~~ tft3.1
SAY ~Attention was all I ever got from the male wizard.~
= ~I hated it. I hated him.~
++ ~I can see why you hated him. He did terrible things to you.~ + tft3.2
++ ~You should try and get over it.~ + + tft3.2
+ ~Gender(Player1,FEMALE)~ + ~I don't appreciate your hatred towards men. You can't judge one man's wrongdoings for the entire gender.~ + tft3.1.1
+ ~Gender(Player1,MALE)~ + ~I don't appreciate your hatred towards men. Have you forgotten that I am one?~ + tft3.1.2
++ ~Look, I'm not here to be your therapist. Speak to someone else about your hatred.~ + tft3.1.3
++ ~That's great, can we move on now?~ + tft3.1.3
END

IF ~~ tft3.1.1
SAY ~Your people say that first impressions are important.~
= ~My first impression of males was through that mage.~
= ~I have seen the greed in the eyes of male and their dominance. The day you see it for yourself will be the day you are no longer a Bhaalspawn, it seems.~
END

IF ~~ tft3.1.2
SAY ~I have not forgotten.~
= ~I do not like you, but one male should know the atrocities of his kind.~
END

IF ~~ tft3.1.3
SAY ~You do not wish to hear more?~
++ ~Fine, go on.~ + tft3.2
++ ~If it's more about your hatred towards "males", then no.~ + tft3.1.3a
++ ~No, I am tired of listening to you. Leave me alone.~ + tft3.1.3b
END

IF ~~ tft3.1.3a
SAY ~No.~
IF ~~ + tft3.2
END

IF ~~ tft3.1.3b
SAY ~Fine.~
= ~It is better this way anyway.~
IF ~~ DO ~SetGlobal("QI#TelziFriendshipActive","GLOBAL",1)~ EXIT
END

IF ~~ tft3.2
SAY ~I killed him.~
= ~After the male wizard had his way with me, he was not careful enough to be my shackles on me.~
= ~I broke free that day and ran until my legs could not carry me.~
= ~All would have been fine, but I did not know the power of my hunger. I did not understand my need for food and water, and as a half-troll, my hunger was intensified.~
= ~It is scary for me to think about, even now.~
= ~I do not want to think about it anymore, let us be on our way.~
IF ~~ DO ~IncrementGlobal("QI#TelziFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#TelziFriendshipTimer",2700)~ EXIT
END

//Talk 4 - Family Massacre
IF ~Global("QI#TelziFriendshipTalk","GLOBAL",8)~ TelziFriendshipTalk4.0
SAY ~I think to understand and get over this feeling of guilt, I should tell you what happened.~
++ ~Sure, go ahead and let it out.~ + tft4.1
++ ~Could you have made that anymore ominous?~ tft4.1
++ ~I am not here for you to use as someone to "ease your feelings of guilt".~ tft4.0.1
++ ~Stop right there. I don't care, nor will I ever care about how you feel about anything.~ + tft4.0.2
END

IF ~~ tft4.0.1
SAY ~That is not how I meant it to sound.~
= ~I would like to share this moment with you though.~
++ ~Alright, go ahead.~ + tft4.1
++ ~Like I said, I don't want any part of this.~ + tft4.0.2
END

IF ~~ tft4.0.2
SAY ~Understandable.~
= ~It is probably best you did not know.~
IF ~~ DO ~SetGlobal("QI#TelziFriendshipActive","GLOBAL",1)~ EXIT
END

IF ~~ tft4.1
SAY ~When I escaped from the male mage, I had issues finding a roof over my head, but more importantly, food.~
= ~Food was constantly on my mind. I always had to eat. I did not care what it was, I know I needed to eat.~
= ~I do not remember what happened very clearly, but I remember bits and pieces of it.~
++ ~Go on.~ + tft4.2
END

IF ~~ tft4.2
SAY ~I remember digging through a garbage pile and feeling a light tap on my shoulder.~
= ~I ignored it. I was hungry. I needed to eat.~
= ~But the tapping continued.~
= ~Finally, I stopped, and I smelled the most delicious smell I had ever known - meat.~
= ~For this next part, you must understand, I was blinded by hunger. I was not myself.~
++ ~What happened?~ + tft4.3
++ ~Okay, I got it. Keep going.~ + tft4.3
++ ~Aren't we all not ourselves when we are hungry?~ + tft4.2.1
END

IF ~~ tft4.2.1
SAY ~A half-troll's hunger is always on its mind. If you think I am a monster now, you would not have recognized me before.~
IF ~~ + tft4.3
END

IF ~~ tft4.3
SAY ~I do not remember the details, but when my hunger subsided, I saw blood covering my hands and pools of it everywhere.~
= ~I saw arms, legs, fingers, ears, and many other body parts around me.~
= ~However, there is one thing that I can clearly remember.~
= ~I saw a hand...it had to be a child's hand - it was small. The hand was curled around a bright, red apple.~
= ~Once again, I ran.~
= ~I learned the most important lesson that day - hunger takes away any semblance of one's humanity.~
IF ~~ DO ~IncrementGlobal("QI#TelziFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#TelziFriendshipTimer",2700)~ EXIT
END

//Talk 5 - Monastary
IF ~("QI#TelziFriendshipTalk","GLOBAL",10)~ TelziFriendshipTalk5.0
SAY ~If you were wondering how I was able to properly phrase the lesson I had learned, I did not do it alone.~
++ ~Those words seemed a little...out of place coming from, I admit.~ + tft5.1
++ ~You're a murderer. Don't you realize that?~ + tft5.0.1
++ ~Oh really? I thought you were some type of hidden genius.~ + tft5.0.2
++ ~Actually, I was wondering about the million other things going on right now.~ + tft5.0.3
++ ~No, I haven't thought about it since.~ + tft5.0.4
END

IF ~~ tft5.0.1
SAY ~Yes, I am a murderer, but I have seen you murder people too.~
++ ~That's different! I am forced to kill them!~ + tft5.0.1a
++ ~I suppose you are right about that.~ + tft5.0.1b
++ ~Yes, but I revel in it.~ + tft5.0.1c
END

IF ~~ tft5.0.1a
SAY ~You are not forced to do anything.~
= ~You can do nothing and let them kill you.~
++ ~But I would die then!~ + tft5.0.1ab
++ ~I suppose you are right about that.~ + tft5.0.1b
END

IF ~~ tft5.0.1ab
SAY ~Exactly.~
= ~Although, I understand our situations are different.~
IF ~~ + tft5.1
END

IF ~~ tft5.0.1b
SAY ~Yes, I am.~
IF ~~ + tft5.1
END

IF ~~ tft5.0.1c
SAY ~I did not like killing those people - that child.~
IF ~~ + tft5.1
END

IF ~~ tft5.0.2
SAY ~I am not a genius.~
= ~You should know this by now.~
IF ~~ + tft5.1
END

IF ~~ tft5.0.3
SAY ~I can add on one more thing to the millions of things you are thinking about now.~
++ ~I'd prefer you didn't. I'd like for you to leave me alone.~ + tft5.0.3a
++ ~Sure, knock yourself out.~ + tft5.1
END

IF ~~ tft5.0.3a
SAY ~Fine.~
= ~It is probably best this way anyway.~
IF ~~ + tft5.1
END

IF ~~ tft5.0.4
SAY ~What have you been thinking about?~
++ ~Never mind. Tell me what you wanted to say.~ + tft5.1
++ ~It's none of your business.~ + tft5.0.4a
++ ~When you will stop talking to me.~ + tft5.0.4b
END

IF ~~ tft5.0.4a
SAY ~If you do not want to talk to me about it, then I will not bother you with my thoughts anymore.~
IF ~~ DO ~SetGlobal("QI#TelziFriendshipActive","GLOBAL",1)~ EXIT
END

IF ~ tft5.0.4b
SAY ~I see.~
= ~I will not bother you anymore then.~
IF ~~ DO ~SetGlobal("QI#TelziFriendshipActive","GLOBAL",1)~ EXIT
END

IF ~~ tft5.1
SAY ~...There is a deep rage within me that is unleashed only when my hunger takes over all my other instincts.~
= ~After I had killed those people, I wanted to control my hunger.~
= ~I overheard stories of the wisdom and discipline of monks during my time with the male wizard.~
= ~So, I decided to seek them out.~
++ ~Go on.~ + tft5.2
++ ~Did you succeed?~ + tft5.2
END

IF ~~ tft5.2
SAY ~I succeeded in finding them.~
= ~And they took me in without hesitation and without questions.~
= ~I stayed with them for a while and they helped me to control some of my hunger, as well as their fighting technique.~
= ~I would have rather stayed but the monks needed someone to travel to Baldur's Gate and see what they could do to help.~
++ ~Don't you need to go back to them?~ + tft5.3
++ ~And here you are.~ + tft5.2.1
+ ~Gender(Player1,MALE)~ + ~But this is a lot more fun, isn't it?~ + tft5.2.2
+ ~Gender(Player1,FEMALE)~ + ~But this is a lot more fun, isn't it?~ + tft5.2.3
++ ~But this is a lot more fun, isn't it?~ + tft5.2.3
END

IF ~~ tft5.2.1
SAY ~Yes, here I am.~
IF ~~ + tft5.3
END

IF ~~ tft5.2.2
SAY ~Yes, it is.~
= ~It surprises me to say this, even though you are a male.~
IF ~~ + tft5.3
END

IF ~~ tft5.2.2
SAY ~Yes, it is.~
IF ~~ + tft5.3
END

IF ~~ tft5.3
SAY ~I think I am helping more than I could now by following you, than wandering around and trying to help the people at Baldur's Gate.~
= ~You saw how they treated me.~
= ~It does not matter now though. I am traveling with you, and I do not think this is a bad thing.~
IF ~~ DO ~IncrementGlobal("QI#TelziFriendshipTalk","GLOBAL",1) RealSetGlobalTimer("QI#TelziFriendshipTimer",2700)~ EXIT
END

//Talk 6 - I support you.
IF ~Global("QI#TelziFriendshipTalk","GLOBAL",12)~ TelziFriendshipTalk6.0
SAY ~You are a respectable warrior.~
+ Gender(Player1, MALE) + ~Thank you. You are too.~ + tft6.0.1a
+ Gender(Player1, FEMALE) + ~Thank you. You are too.~ + tft6.0.1b
+ Gender(Player1, MALE) + ~Thanks? Although, I hardly need your confirmations.~ + tft6.0.1a
+ Gender(Player1, FEMALE) + ~Thanks? Although, I hardly need your confirmations.~ + tft6.0.1b
++ ~What brought this on?~ + tft6.0.2
++ ~Coming from a monster, that doesn't mean anything.~ + tft6.0.3
++ ~You are talking again? Don't you understand when someone doesn't want to talk to you?~ + tft6.0.4
END

IF ~~ tft6.0.1a
SAY ~I did not think males could be respectable. I did not think they could listen too.~
= ~But I see I was wrong.~
IF ~~ + tft6.1
END

IF ~~ tft6.0.1b
SAY ~You are a formidable female. I did not expect you to listen to me either.~
= ~At the same time, I cannot help but admire your strength and determination.~
IF ~~ + tft6.1
END

IF ~~ tft6.0.2
SAY ~I traveled and fought by your side.~
= ~I believed you would fail and disappoint in your tasks, but you have proven otherwise.~
IF ~~ + tft6.1
END

IF ~~ tft6.0.3
SAY ~I am a monster, you are right.~
= ~But I am a monster that has traveled and fought by your side.~
= ~I believed you would fail and disappoint in your tasks, but you have proven otherwise.~
IF ~~ + tft6.1
END

IF ~~ tft6.0.4
SAY ~You gave no indication, so no, I would not know.~
= ~If you would like for me to stop, you must say it.~
++ ~Yes, stop talking to me. I don't want to listen to your voice ever again.~ +  tft6.0.4a
++ ~Sorry, Telzi. I didn't mean that. Please continue with what you were going to say.~ + tft6.0.2
END

IF ~~ tft6.0.4a
SAY ~Fine.~
IF ~~ DO ~SetGlobal("QI#TelziFriendshipActive,"GLOBAL",1)~ EXIT
END

IF ~~ tft6.1
SAY ~It is a pleasure and honor watching you fight. I feel inspired by your actions.~
= ~You have also calmly traveled with a monster. It is surprising to me.~
++ ~You aren't a monster, you're my friend.~ + tft6.2
++ ~Aren't we all monsters here?~ + tft6.1.1
++ ~I wouldn't say I was calm about the whole situation, but you're welcome.~ + tft6.2
++ ~Good. I am glad to hear that. Perhaps you will fight harder for me next we engage in battle.~ + tft6.1.2
END

IF ~~ tft6.1.1
SAY ~No, you are a <PRO_RACE>.~
++ ~(sigh) Never mind.~ + tft6.2
++ ~I'll never get tired of your sense of humor.~ + tft6.1.1a
END

IF ~~ tft6.1.1a
SAY ~I was not trying to be funny.~
++ ~(sigh) Never mind.~ + tft6.2
END

IF ~~ tft6.1.2
SAY ~Yes, I will do that.~
IF ~~ + tft6.2
END

IF ~~ tft6.2
SAY ~You are a rare find.~
= ~There is no other creature like you in this world, always stay to true yourself. Do not let others speak ill of you.~
= ~Do not change.~
= ~You will always have my support, my friend.~
IF ~~ DO ~IncrementGlobal("QI#TelziFriendshipTalk","GLOBAL",1)~ EXIT
END


/********************* Romance Path *********************/
// Talk 1
IF ~Global("QI#TelziLoveTalk","GLOBAL",2)~ tz1.0
SAY ~You radiant strength and power.~
= ~It is very appealing to anyone in the area.~
++ ~Thank you, that was a very nice compliment.~ + tz1.0.1
++ ~Your flattery is not needed.~ + tz1.0.2
++ ~You're not so bad yourself.~ + tz1.0.3
++ ~I don't know what you are getting at, but I'm not interested.~ + tz1.0.4
END

IF ~~ tz1.0.1
SAY ~You are welcome.~
IF ~~ + tz1.1
END

IF ~~ tz1.0.2
SAY ~Then, what is needed?~
++ ~Not flattery.~ + tz1.1
++ ~Wouldn't you like to know.~ + tz1.0.2a
++ ~Flowers and the finest chocolates.~ + tz1.1
++ ~Not you.~ + tz1.1.0
END

IF ~~ tz1.0.2a
SAY ~I would.~
IF ~~ + tz1.1
END

IF ~~ tz1.0.3
SAY ~I am not a bad person.~
IF ~~ + tz1.1
END

IF ~~ tz1.0.4
SAY ~What are you not interested in?~
++ ~You.~ + tz1.1.0
END

IF ~~ tz1.1.0
SAY ~Okay, I will not bother you anymore.~
IF ~~ DO ~SetGlobal("QI#TelziRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ tz1.1
SAY ~I am not good with words, <CHARNAME>.~
= ~You should know that.~
++ ~You don't say.~ + tz1.2
++ ~I could tell.~ + tz1.2
++ ~Then, what are you good at?~ + tz1.1.1
++ ~I don't need flowery words, Telzi. You should know that.~ + tz1.2
END

IF ~~ tz1.1.1
SAY ~Fighting. Eating. Speaking the truth.~
IF ~~ + tz1.2
END

IF ~~ tz1.2
SAY ~I like to say things as they are.~
= ~I do not like hidden meanings. Symbols. Puzzles. Mysteries. Magic. Mages.~
= ~They are strange. They are secretive. They are dangerous.~
= ~They do not care about anything, except themselves.~
+ ~Class(Player1,MAGE_ALL)~ + ~You know I am a mage, right?~ + tz1.2.1
++ ~I disagree, without the mysteries of the world, what would we be searching for in life?~ + tz1.3a
++ ~I disagree, mages are very useful.~ + tz1.2.3
++ ~Every thing and everyone has their uses.~ + tz1.3b
++ ~I don't like mysteries either. It requires too much thinking.~ + tz1.3a
++ ~I don't like those things either, the answer should always be plain and simple.~ + tz1.3a
+ ~!Class(Player1,MAGE_ALL)~ + ~I've never been a fan of mages myself.~ + tz1.2.2
END

IF ~~ tz1.2.1
SAY ~Yes, I am aware.~
= ~But you are different. You saved me.~
= ~So, you cannot be like all mages.~
= ~Your actions speak for you, and your actions are true. Therefore, your words as a mage is okay.~
IF ~~ + tz1.3a
END

IF ~~ tz1.2.2
SAY ~Good.~
= ~That is something we have in common. Good bonds start with similarities, so I have been told.~
= ~Mages would be easier to handle if they spoke without mysteries.~
IF ~~ + tz1.3a
END

IF ~~ t1.2.3
SAY ~Hmph. Maybe a use for you, but not for me.~
= ~I find mages distrustful. They do not speak the truth.~
IF ~~ + tz1.3a
END

IF ~~ tz1.3a
SAY ~If people would speak their minds and share things straight away, we would not have to think about things longer than needed.~
= ~People would know what another person would want immediately. No need for guesses or embarrassment. No need to fake anything. Everything would be real.~
= ~Like you and me, and my sudden tiredness of this conversation.~
= ~I will speak to you again, when I am ready to talk.~
IF ~~ DO ~IncrementGlobal("QI#TelziLoveTalk","GLOBAL",1) ("QI#TelziRomanceTimer","GLOBAL",2100)~ EXIT
END

// Talk 2 - Dream Talk 1: Reading and Writing
IF ~Global("QI#TelziLoveTalk","GLOBAL",4)~ tz2.0
SAY ~I see you write in that book often.~
= ~(Telzi closes the distance between the two of you and curiously peers over your shoulder to look at your journal.)~
++ ~(Move closer to Telzi and show her the contents of your journal.)~ + tz2.1
++ ~Can you read this?~ + tz2.1
++ ~Can you not stand so close to me?~ + tz2.0.1
++ ~Stand away from me, monster!~ + tz2.0.2
++ ~I don't want to share my journal with you.~ + tz2.1
END

IF ~~ tz2.0.1
SAY ~(Telzi stiffens for a moment and backs away quickly.)~
= ~What is in there?~
++ ~(Show Telzi the contents of your journal.)~ + tz2.1
++ ~Can you read this?~ + tz2.1
++ ~I meant, you should stand far from me. I don't want you near me.~ + tz2.0.2
++ ~I don't want to share my journal with you.~ + tz2.1
END

IF ~~ tz2.0.2
SAY ~(Telzi makes no sound and turns away from you.)~
= ~(From the corner of your eyes, you catch a glimpse of her sulking to her room.)~
IF ~~ DO ~SetGlobal("QI#TelziRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ tz2.1
SAY ~I cannot read. I cannot write.~
++ ~Why?~ + tz2.2
++ ~That's not a surprise.~ + tz2.2
++ ~I feel sorry for you.~ + tz2.2
END

IF ~~ tz2.2
SAY ~I have experience in only two things - fighting and pleasuring.~
= ~I was never given a...a book.~
= ~I have seen the male wizard spend many days looking at them, and that is when I liked him most. He didn't bother me when he was looking at them.~
++ ~I am sorry to hear that.~ + tz2.3
++ ~Pleasuring, eh? I have seen you fight, but not the latter.~ + tz2.2.1
++ ~That sucks, but there's nothing I can do about that.~ + tz2.3
END

IF ~~ tz2.2.1
SAY ~Because we have not been intimate.~
++ ~I figured.~ + tz2.3
++ ~Again with your blunt attitude.~ + tz2.2.1a
++ ~Yes, I know. Why don't we change that?~ + tz2.2.1b
++ ~And I would never want to be intimate with you.~ + tz2.2.1c
END

IF ~~ tz2.2.1a
SAY ~I do not know what you expect from me.~
= ~But, I have something to ask you.~
IF ~~ + tz2.3
END

IF ~~ tz2.2.1b
SAY ~Change..?~
= ~Do not be hurt from this, <CHARNAME>, but I do not want to be intimate with you. Not now.~
= ~But, I have something to ask you.~
IF ~~ + tz2.3
END

IF ~~ tz2.2.1c
SAY ~I do not want to be intimate with you either.~
= ~But, I have something to ask you.~
IF ~~ + tz2.3
END

IF ~~ tz2.3
SAY ~Can you teach me how to read and write?~
++ ~Of course.~ + tz2.4
++ ~When would we have time for reading and writing lessons?~ + tz2.3.1
++ ~I'm not your personal tutor, go find someone else.~ + tz2.3.2
++ ~Ha! *You* want to learn? I don't think it's possible for me to teach someone with such low intelligence.~ + tz2.3.3
END

IF ~~ tz2.3.1
SAY ~When we stop for rest or when we are taking a break at camp.~
= ~I want to learn. I will do my best.~
++ ~I'd be happy to teach you. Let's get started now.~ + tz2.4
++ ~Fine, I'll teach you, but don't expect me to hand-hold you through everything!~ + tz2.3.1a
++ ~I'm not your personal tutor, go find someone else.~ + tz2.3.2
++ ~Ha! *You* want to learn? I don't think it's possible for me to teach someone with such low intelligence.~ + tz2.3.3
END 

IF ~~ tz2.3.1a
SAY ~I do not expect it from you.~
= ~But you will not have to worry, I will make you proud.~
IF ~~ DO ~SetGlobal("QI#TelziReadingWriting","GLOBAL",1) IncrementGlobal("QI#TelziLoveTalk","GLOBAL",1) ("QI#TelziRomanceTimer","GLOBAL",2100)~ EXIT
END

IF ~~ tz2.3.2
SAY ~That was the expected answer from you.~
= ~I understand you are a very busy person.~
= ~I will not ask you this again.~
IF ~~ DO ~IncrementGlobal("QI#TelziLoveTalk","GLOBAL",1) ("QI#TelziRomanceTimer","GLOBAL",2100)~ EXIT
END 

IF ~~ tz2.3.3
SAY ~You think so lowly of me?~
= ~Then, why do you continue to talk to me?~
= ~Never mind. I do not want to hear your answer. I will not bother you again.~
IF ~~ DO ~SetGlobal("QI#TelziRomanceActive","GLOBAL",3)~ EXIT
END 

IF ~~ tz2.4
SAY ~Now?~
= ~Yes, now.~
= ~Where do we begin?~
IF ~~ DO ~SetGlobal("QI#TelziReadingWriting","GLOBAL",1) IncrementGlobal("QI#TelziLoveTalk","GLOBAL",1) ("QI#TelziRomanceTimer","GLOBAL",2100)~ EXIT
END

// Talk 3 - Monsters
IF ~Global("QI#TelziLoveTalk","GLOBAL",6)~ tz3.0
SAY ~I am told that mothers tell their offspring that monsters exist. They also tell them to stay away from them.~
= ~Do...do you think I am a monster?~
++ ~No, you are far from being a monster of any sorts.~ + tz3.0.1
++ ~A monster can be defined as many things, but you are not any of them.~ + tz3.0.2
++ ~Monsters can't be as pretty as you.~ + tz3.0.3
++ ~I'm sorry, Telzi. But whatever we have, or whatever this is, needs to stop.~ + tz3.0.4
++ ~Yes, you are the biggest monster I have ever met. Now, leave me alone.~ + tz3.0.5
END

IF ~~ tz3.0.1
SAY ~You are kind to say so.~
= ~But many would say differently.~
++ ~I don't care what anyone else says, you are your own person.~ + tz3.1
++ ~And they can continue to say differently, because my opinion is the only thing that should matter to you.~ + tz3.0.2a
++ ~I'm sorry, Telzi. But whatever we have, or whatever this is, needs to stop.~ + tz3.0.4
END

IF ~~ tz3.0.2
SAY ~You are right, but you are kind to say so.~
= ~However, many would say differently.~
++ ~I don't care what anyone else says, you are your own person.~ + tz3.0.2b
++ ~And they can continue to say differently, because my opinion is the only thing that should matter to you.~ + tz3.0.2a
++ ~I'm sorry, Telzi. But whatever we have, or whatever this is, needs to stop.~ + tz3.0.4
END

IF ~~ tz3.0.2a
SAY ~Why?~
++ ~Because I like you, Telzi. I care about you.~ + tz3.1
++ ~Let's just say that I've grown quite fond of you.~ + tz3.1
++ ~Because you are a wonderful friend, and I know what's best for you.~ + tz3.0.2aa
++ ~I have no reason, forget I even said anything. Actually, let's forget this conversation ever happened.~ + tz3.0.5
END

IF ~~ tz3.0.2aa
SAY ~A friend? That is all?~
++ ~Yes, just a friend.~ + tz3.0.4
++ ~Let's just say that I've grown quite fond of you.~ + tz3.1
++ ~Okay, you caught me. I like you, Telzi.~ + tz3.1
++ ~I'm just kidding, I don't care about you in any sort of way.~ + tz3.0.5
END

IF ~~ tz3.0.2b
SAY ~That is good to hear, especially coming from you. Why are you so kind to me?~
++ ~Because I like you, Telzi. I care about you.~ + tz3.1
++ ~Let's just say that I've grown quite fond of you.~ + tz3.1
++ ~Because you are a wonderful friend, and I know what's best for you.~ + tz3.0.2aa
++ ~I have no reason, forget I even said anything. Actually, let's forget this conversation ever happened.~ + tz3.0.5
END

IF ~~ tz3.0.3
SAY ~You...you think I am pretty?~
= ~I had thought the male wizard had changed my face to match what males would want.~
END

IF ~~ tz3.0.4
SAY ~I...I understand.~
= ~I expected too much.~
IF ~~ DO ~SetGlobal("QI#TelziRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ tz3.0.5
SAY ~I...I thought you --~
= ~Nothing. Do not mind me. I expected too much.~
IF ~~ DO ~SetGlobal("QI#TelziRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ tz3.1
SAY ~I am fond of you too. I like you.~
= ~Being with you fills a void in my stomach. Figuratively and maybe literally. *smiles*~
IF ~~ DO ~IncrementGlobal("QI#TelziLoveTalk","GLOBAL",1) ("QI#TelziRomanceTimer","GLOBAL",2100)~ EXIT
END

// Talk 4 - Dream Talk 2
IF ~Global("QI#TelziLoveTalk","GLOBAL",8)~ tz4.0
SAY ~You are so strong, so determined, so full of life. You are so beautiful.~
= ~Come sit with me.~
++ ~Thank you, Telzi. What do you need?~ + tz4.1
++ ~Alright, what do you want?~ + tz4.1
++ ~Can't you say whatever you need to say right now?~ + tz4.0.1
++ ~Please go away, I don't want to talk to you right now.~ + tz4.0.2
++ ~I think you have the wrong idea about us, Telzi.~ + tz4.0.3
END

IF ~~ tz4.0.1
SAY ~No, this needs to be said privately.~
++ ~Fine. Lead the way.~ + tz4.1
++ ~No, I don't want to talk to you right now.~ + tz4.0.2
END

IF ~~ tz4.0.2
SAY ~This is important to me.~
++ ~Fine. Lead the way.~ + tz5.1
++ ~We can talk about this later, I promise.~ + tz4.0.2a
++ ~I don't care. I don't want to talk to you right now.~ + tz4.0.2b
END

IF ~~ tz4.0.2a
SAY ~I trust you will keep your promise. I will say no more until then.~
IF ~~ DO ~SetGlobal("QI#TelziRomanceWait","GLOBAL",1)~ EXIT
END

IF ~~ tz4.0.2b
SAY ~You do not care?~
= ~Then, you have said enough.~
= ~You will not hear from me again.~
IF ~~ DO ~SetGlobal("QI#TelziRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ tz4.0.3
SAY ~I have the right idea about us.~
= ~What we have is right.~
++ ~No, it's not. I'm sorry, Telzi.~ + tz4.0.3a
++ ~Ha! We are not the right idea. You are a monster, I can't be with a monster!~ + tz4.0.3b
END

IF ~~ tz4.0.3a
SAY ~Do not apologize, I regret nothing.~
IF ~~ DO ~SetGlobal("QI#TelziRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ tz4.0.3b
SAY ~You think I am a monster? After all this?~
= ~No, <CHARNAME>. I am not the monster, you are.~
= ~If there is anything I have learned, it is that one's appearance does not mean they are a monster. It is their actions.~
= ~Your actions in dealing with this makes you a monster.
= ~I thought you would have the goodness in you to deny me earlier. I will not speak to you any more.~
IF ~~ DO ~SetGlobal("QI#TelziRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ tz4.1
SAY ~Share this moment with me.~
= ~Let me kiss you.~
++ ~You didn't have to say that last bit, I would have shared this kiss with you regardless.~ + tz4.2
++ ~It's about time! I was wondering how a half-troll handles themselves.~ + tz4.2
++ ~Why do you have to be so blunt about this?~ + tz4.1.1
++ ~I'm sorry, I don't feel the same way.~ + tz4.0.3a
++ ~Right now? I am tired, how about I come to you when I am ready?~ + tz4.0.2b
++ ~Me? Kiss a monster? That's outrageous!~ + tz4.0.3b
END

IF ~~ tz4.1.1
SAY ~I do not know how people say it these days.~
= ~I do not want to "dance around the subject", as people say.~
++ ~Woah, you didn't take that literally.~ + tz4.1.1a
++ ~Nevermind.~ + tz4.1.1b
END

IF ~~ tz4.1.1a
SAY ~It is physically impossible to dance around a subject, or a topic.~
++ ~Nevermind.~ + tz4.1.1b
END

IF ~~ tz4.1.1b
SAY ~Then, what is your verdict?~
++ ~You didn't have to say that last bit, I would have spent this kiss with you regardless.~ + tz4.2
++ ~It's about time! I was wondering how a half-troll handles themselves.~ + tz4.2
++ ~I'm sorry, I don't feel the same way.~ + tz4.0.3a
++ ~Right now? I am tired, how about I come to you when I am ready?~ + tz4.0.2b
++ ~Me? Kiss a monster? That's outrageous!~ + tz4.0.3b
END

IF ~~ tz4.2
SAY ~This makes me happy to hear.~
= ~I will cherish this moment for as long as I live...~
IF ~~ DO ~SetGlobal("QI#TelziRomanceActive","GLOBAL",1) RealSetGlobalTimer("QI#TelziRomanceTimer","GLOBAL",2100)~
END

// Talk 5 - Confession
IF ~Global("QI#TelziLoveTalk","GLOBAL",10)~ tz5.0
SAY ~<CHARNAME>. I would like to speak to you. Now.~
++ ~Is something the matter, Telzi?~ + tz5.1
++ ~Now? Is this a matter of urgency...or something else? *wink*~ + tz5.0.1
++ ~We don't have the time right now, can't this wait?~ + + tz5.0.2
++ ~I don't have the time to do this, Telzi. Everything that has happened thus far has been a mistake.~ + tz5.0.3
END

IF ~~ tz5.0.1
SAY ~Is there something in your eye?~
= ~I don't see anything in it.~
++ ~*sigh* Never mind.~ + tz5.0.1a
END

IF ~~ tz5.0.1a
SAY ~If that is what you wish, I will go on then.~
IF ~~ + tz5.1
END

IF ~~ tz5.0.2
SAY ~No, this cannot wait. This needs to be said now.~
++ ~Alright, go ahead.~ + tz5.1
++ ~Well, whatever you need to say can't be that important.~ + tz5.0.2a
END

IF ~~ tz5.0.2a
SAY ~If you thought so little of me, then it is good you have stalled me this long.~
= ~You will not hear from me again, I can promise that.~
IF ~~ DO ~SetGlobal("QI#TelziRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ tz5.0.3
SAY ~That is how you feel?~
= ~Then, why did you kiss me? Why would you listen to me talk? Why --~
= ~No, I do not want to know the answer.~
= ~I will not speak to you again. You can expect that from me.~
IF ~~ DO ~SetGlobal("QI#TelziRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ tz5.1
SAY ~You have listened to my story and still accepted me.~
IF ~Global("QI#TelziReadingWriting","GLOBAL",1)~ + tz5.1a
IF ~!Global("QI#TelziReadingWriting","GLOBAL",1)~ + tz5.2            
END

IF ~~ tz5.1a
SAY ~You have taught me how to read and write.~
= ~I know I have a lot more to learn, but I think I am able to read and write a little.~
IF ~~ + tz5.2
END

IF ~~ tz5.2
SAY ~I want to say thank you.~
= ~So, thank you.~
= ~I have something else I must say to you.~
++ ~What is it?~ + tz5.3
++ ~That's the first time I have heard you say thank you - you're welcome!~ + tz5.2.1
++ ~I don't have all day. Come on now.~ + tz5.3
++ ~Spit it out already.~ + tz5.3
END

IF ~~ tz5.2.1
SAY ~Showing thanks is not one of my strengths.~
= ~Even then, appreciation is given too often nowadays. It should be more thoughtful, I think.~
IF ~~ + t5.3
END

IF ~~ tz5.3
SAY ~I feel...strangely calm when I am around you.~
= ~You occupy my mind more than my hunger and want of food.~
++ ~That is wonderful to hear. I find myself thinking about you more as well.~ + tz5.4
++ ~You are the one person that can compare to food and still sound some-what cute about it.~ + tz5.4
++ ~Gee, thanks.~ + tz5.3.1
++ ~I'm sorry, Telzi. I don't feel the same way about you.~ + tz5.0.3
++ ~Ha! You like me! Well, that stinks because I could never like a monster like you.~ + tz5.0.3
END

IF ~~ tz5.3.1
SAY ~You are welcome.~
IF ~~ + tz5.4
END

IF ~~ tz5.4
SAY ~I care deeply for you, <CHARNAME>.~
= ~I have not felt this feeling before, but I know how I feel about you.~
= ~You do not need to say anything else, but I would like for you to know that wherever you go, I will follow. Whatever you do, I will support you.~
= ~I will protect you with my life. I would give you my life, if you asked for it.~
= ~You have my complete and utter devotion. All I ask in return is your affection and kindness towards me to continue.~
++ ~Of course, Telzi. I care deeply for you too.~ + tz5.5
++ ~Complete and utter devotion, eh? I like the sound of that. I'll give you the affection you desperately crave.~ + tz5.5
++ ~I'm sorry, Telzi. I don't feel the same way about you.~ + tz5.0.3
++ ~Ha! You like me! Well, that stinks because I could never like a monster like you.~ + tz5.0.3
END

IF ~~ tz5.5
SAY ~That is all I could have asked for in this life.~
= ~You are one of a kind, <CHARNAME>.~
IF ~~ DO ~IncrementGlobal("QI#TelziLoveTalk","GLOBAL",1) ("QI#TelziRomanceTimer","GLOBAL",2100)~ EXIT
END

/***************** Player-Initiated Dialogues *****************/
//Non-Romance PIDs
IF ~Global("QI#TelziRomanceActive","GLOBAL",0) GlobalGT("QI#TelziFriendshipTalk","GLOBAL",6) !Global("QI#TelziFriendshipActive","GLOBAL",1) IsGabber(Player1)~ QI#TelziFriendDialogues
SAY ~Speak.~ [F_Barb#]
++ ~Where did you get the name "Telzi"?~ + TelziName1.0
++ ~Would you ever consider being with a man if they proved to you that they were good and kind?~ + TelziMan1.0
+ ~RandomNum(4,1)~ + ~Do you have any advice for me?~ + TelziAdvice1.0
+ ~RandomNum(4,2)~ + ~Do you have any advice for me?~ + TelziAdvice2.0
+ ~RandomNum(4,3)~ + ~Do you have any advice for me?~ + TelziAdvice3.0
+ ~RandomNum(4,4)~ + ~Do you have any advice for me?~ + TelziAdvice4.0
++ ~You eat so much, I don't understand how we even have enough to feed you.~ + TelziEat1.0
++ ~What are you going to do after all this is over?~ + TelziOver1.0
++ ~Tell me more about yourself, Telzi.~ + TelziExplain1.0
++ ~Why do you take everything so literally? Haven't you heard of a joke?~ + TelziJoke1.0
+ ~RandomNum(4,1)~ + ~How are you doing?~ + TelziFeeling1.0
+ ~RandomNum(4,2)~ + ~How are you doing?~ + TelziFeeling2.0
+ ~RandomNum(4,3)~ + ~How are you doing?~ + TelziFeeling3.0
+ ~RandomNum(4,4)~ + ~How are you doing?~ + TelziFeeling4.0
+ ~RandomNum(3,1)~ + ~(Regard Telzi's physical form.)~ + TelziRegard1.0
+ ~RandomNum(3,2)~ + ~(Regard Telzi's physical form.)~ + TelziRegard2.0
+ ~RandomNum(3,3)~ + ~(Regard Telzi's physical form.)~ + TelziRegard3.0
++ ~Never mind.~ EXIT
END

IF ~~ TelziName1.0
SAY ~I chose the name "Telzi" for myself.~
= ~The male wizard gave me no name, other than bitch, whore, slave, and troll.~
++ ~How did you come up with that name though?~ + TeziName1.1
++ ~Wow, that was too much information.~ + TelziName1.2
++ ~That is a very sad life, Telzi.~ + TelziName1.3
++ ~Can I call you those names as well?~ + TelziName1.4
END

IF ~~ TelziName1.1
SAY ~I liked the sound of it.~
= ~That is all.~
= ~Not everything has a hidden meaning behind it.~
IF ~~ EXIT
END

IF ~~ TelziName1.2
SAY ~You asked.~
IF ~~ EXIT
END

IF ~~ TelziName1.3
SAY ~So many have said.~
IF ~~ EXIT
END

IF ~~ TelziName1.4
SAY ~No.~
= ~You will call me Telzi, and that is the only name you will call me.~
IF ~~ EXIT
END

IF ~~ TelziMan1.0
SAY ~If there was such a male, I might consider it. But my time with males have only ended in pain and suffering,~
= ~This male would need to be extraordinary. Extraordinary enough to take away my memories of my past.~
IF ~~ EXIT
END

IF ~~ TelziAdvice1.0
SAY ~A full belly calms any creature.~
IF ~~ EXIT
END

IF ~~ TelziAdvice2.0
SAY ~Speak the truth. Do not waste time avoiding it.~
IF ~~ EXIT
END

IF ~~ TelziAdvice3.0
SAY ~Not at this time, no.~
IF ~~ EXIT
END

IF ~~ TelziAdvice4.0
SAY ~Do not be afraid to put a male in its place.~
IF ~~ EXIT
END

IF ~~ TelziEat1.0
SAY ~I do not eat as much as I used to. It is a great improvement.~
IF ~~ EXIT
END

IF ~~ TelziOver1.0
SAY ~I will return to the monastary and live out the rest of my days there.~
IF ~~ EXIT
END

IF ~~ TelziExplain1.0
SAY ~What is there to tell that you do not know already?~
++ ~Tell me anything about yourself. Anything.~ + TelziExplain1.1
++ ~Good point. Never mind.~ EXIT
END

IF ~~ TelziExplain1.1
SAY ~I like to eat. I like ale. The stronger, the better.~
= ~I like the way the sun feels on my skin.~
= ~I like to feel the dirt between my toes.~
= ~I prefer the truth to lies.~
= ~My greatest desire in this world is to live in peace.~
IF ~~ EXIT
END

IF ~~ TelziJoke1.0
SAY ~I have heard of jokes, yes. I do not know why they are so amusing.~
= ~ Besides, treating things literally makes things easier for me to think about.~
IF ~~ EXIT
END

IF ~~ TelziFeelings1.0
SAY ~My stomach is full.~
= ~I am happy.~
IF ~~ EXIT
END

IF ~~ TelziFeelings2.0
SAY ~I could go for another piece of meat.~
= ~I think this being fed would make me happier.~
IF ~~ EXIT
END

IF ~~ TelziFeelings3.0
SAY ~I am still alive.~
= ~It is a good day.~
IF ~~ EXIT
END

IF ~~ TelziFeelings4.0
SAY ~Well enough.~
IF ~~ EXIT
END

IF ~~ TelziRegard1.0
SAY ~(Telzi is seen casually munching on who-knows-what and you curiously watch her as she chows down.)~
= ~(She takes large, generous bites and soon enough, the object in her hand disappears.)~
= ~(You watch her search through her pack. Her lean, yet muscular arms ripple in the light and you can see her lips curl in frustration as she rummages around.)~
= ~(Finally, she pulls out what looks like a rack of meat, and your thoughts wander to how she stores such large amounts of food in there.)~
= ~(You are quickly brought back into reality when you hear a loud, satisfied burp from Telzi.)~
IF ~~ EXIT
END

IF ~~ TelziRegard2.0
SAY ~(Telzi is intently scanning around her surroundings for any unwanted visitors. You decide that this is the best time to regard the half-troll.)~
= ~(Strangely enough, Telzi shows few physical signs of her troll heritage. She is exceptionally tall and her eyes are an odd ghost-like pale blue color. If not for her teal skin and three-fingered hands and two-legged toes resembling more like claws, she could easily pass off as an half-elf.)~
= ~(As your eyes make your way up to her face, Telzi's gaze shifts to meet yours. Her stone-cold look makes this a good time to look away.)~
IF ~~ EXIT
END

IF ~~ TelziRegard3.0
SAY ~(You take this moment to carefully examine Telzi.)~
= ~(Her flaming red hair makes her stand out in a crowd. Even if it was covered by a hood, it is long enough where small strands fall out.)~
= ~(Another close look at Telzi's face reveals a slightly freckled face. It wouldn't be very noticeable if not for the angle in which she stands. A suddent shift in her position hides them, and you are left wondering how her freckles blend in so well with her skin.)~
IF ~~ EXIT
END

//Romance PIDs
IF ~OR (2)
       Global("QI#TelziRomanceActive","GLOBAL",1) 
       Global("QI#TelziRomanceActive","GLOBAL",2)
    IsGabber(Player1)~ QI#TelziRomanceDialogues
SAY ~(Telzi looks at you expectantly.)~
++ ~Where did you get the name "Telzi"?~ + TelziName1.0
++ ~Would you ever consider being with a man if they proved to you that they were good and kind?~ + TelziMan1.0
+ ~RandomNum(4,1)~ + ~Do you have any advice for me?~ + TelziAdvice1.0
+ ~RandomNum(4,2)~ + ~Do you have any advice for me?~ + TelziAdvice2.0
+ ~RandomNum(4,3)~ + ~Do you have any advice for me?~ + Telziadvice3.0
+ ~RandomNum(4,4)~ + ~Do you have any advice for me?~ + TelziAdvice4.0
++ ~You eat so much, I don't understand how we even have enough to feed you.~ + TelziEat1.0
+ ~Global("QI#TelziRomanceActive","GLOBAL",1)~ + ~What are you going to do after all this is over?~ + TelziOver1.0
+ ~Global("QI#TelziRomanceActive","GLOBAL",2)~ + ~What are you going to do after all this is over?~ + TelziOver2.0
++ ~Tell me more about yourself, Telzi.~ + TelziExplain1.0
+ ~RandomNum(4,1)~ + ~How are you doing?~ + TelziFeeling1.0
+ ~RandomNum(4,2)~ + ~How are you doing?~ + TelziFeeling2.0
+ ~RandomNum(4,3)~ + ~How are you doing?~ + TelziFeeling3.0
+ ~RandomNum(4,4)~ + ~How are you doing?~ + TelziFeeling4.0
+ ~RandomNum(3,1)~ + ~(Take her by the hand.)~ + TelziHand1.0
+ ~RandomNum(3,2)~ + ~(Take her by the hand.)~ + TelziHand2.0
+ ~RandomNum(3,3)~ + ~(Take her by the hand.)~ + TelziHand3.0
+ ~RandomNum(2,1)~ + ~You look so exotic. I like it.~ + TelziExotic1.0
+ ~RandomNum(2,2)~ + ~You look so exotic. I like it.~ + TelziExotic2.0
+ ~RandomNum(3,1)~ + ~You're so tall. Maybe you could hoist me up on your shoulders one day?~ + TelziTall1.0
+ ~RandomNum(3,2)~ + ~You're so tall. Maybe you could hoist me up on your shoulders one day?~ + TelziTall2.0
+ ~RandomNum(3,3)~ + ~You're so tall. Maybe you could hoist me up on your shoulders one day?~ + TelziTall3.0
+ ~RandomNum(3,1)~ + ~(Hug her.)~ + TelziHug1.0
+ ~RandomNum(3,2)~ + ~(Hug her.)~ + TelziHug2.0
+ ~RandomNum(3,3)~ + ~(Hug her.)~ + TelziHug3.0
+ ~RandomNum(3,1)~ + ~(Kiss her on the cheek.)~ +TelziCheek1.0
+ ~RandomNum(3,2)~ + ~(Kiss her on the cheek.)~ + TelziCheek2.0
+ ~RandomNum(3,3)~ + ~(Kiss her on the cheek.)~ + TelziCheek3.0
+ ~RandomNum(4,1)~ + ~(Give her a quick kiss on the lips.)~ + TelziQuickLips1.0
+ ~RandomNum(4,2)~ + ~(Give her a quick kiss on the lips.)~ + TelziQuickLips2.0
+ ~RandomNum(4,3) Global("QI#TelziRomanceActive","GLOBAL",2)~ + ~(Give her a quick kiss on the lips.)~ + TelziQuickLips3.0
+ ~RandomNum(4,4) Global("QI#TelziRomanceActive","GLOBAL",2)~ + ~(Give her a quick kiss on the lips.)~ + TelziQuickLips4.0
+ ~RandomNum(3,1) Global("QI#TelziRomanceActive","GLOBAL",2)~ + ~(Passionately kiss her.)~ + TelziPassion1.0
+ ~RandomNum(3,2) Global("QI#TelziRomanceActive","GLOBAL",2)~ + ~(Passionately kiss her.)~ + TelziPassion2.0
+ ~RandomNum(3,3) Global("QI#TelziRomanceActive","GLOBAL",2)~ + ~(Passionately kiss her.)~ + TelziPassion3.0
+ ~RandomNum(3,1)~ + ~(Regard Telzi's physical form.)~ + TelziRegard1.0
+ ~RandomNum(3,2)~ + ~(Regard Telzi's physical form.)~ + TelziRegard2.0
+ ~RandomNum(3,3)~ + ~(Regard Telzi's physical form.)~ + TelziRegard4.0
+ ~Global("QI#TelziRomanceWait","GLOBAL",1)~ + ~I have some time now, Telzi. What do you need to speak to me about that was so urgent?~ + WaitingUrgent
+ ~RandomNum(3,1) GlobalGT("QI#TelziLoveTalk","GLOBAL",8) !Global("QI#TelziRomanceWait","GLOBAL",1)~ + ~I can't wait to be alone with you when this is all over.~ + TelziSleep1.0
+ ~RandomNum(3,2) GlobalGT("QI#TelziLoveTalk","GLOBAL",8) !Global("QI#TelziRomanceWait","GLOBAL",1)~ + ~I can't wait to be alone with you when this is all over.~ + TelziSleep2.0
+ ~RandomNum(3,3) GlobalGT("QI#TelziLoveTalk","GLOBAL",8) !Global("QI#TelziRomanceWait","GLOBAL",1)~ + ~I can't wait to be alone with you when this is all over.~ + TelziSleep3.0
+ ~Global("QI#TelziRomanceActive","GLOBAL",1)~ + ~Telzi, I'd like to end our relationship.~ + TelziRomanceEnd1.0
+ ~Global("QI#TelziRomanceActive","GLOBAL",2)~ + ~Telzi, I'd like to end our relationship.~ + TelziRomanceEnd2.0
++ ~Never mind.~ EXIT
END

IF ~~ TelziRomanceEnd1.0
SAY ~If you think so, then it is probably better this way.~
IF ~~ DO ~SetGlobal("QI#TelziRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ TelziRomanceEnd2.0
SAY ~...After everything?~
++ ~Yes.~ + TelziRomanceEnd2.1
++ ~I don't know what came over me. Please ignore that.~ EXIT
END

IF ~~ TelziRomanceEnd2.1
SAY ~I disagree with this, but a relationship will only work with two willing individuals.~
= ~You will not be bothered by me any longer.~
IF ~~ DO ~SetGlobal("QI#TelziRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ TelziOver1.0
SAY ~I will go where I am directed next.~
= ~It is as simple as that.~
IF ~~ EXIT
END

IF ~~ TelziOver2.0
SAY ~Wherever you go, <CHARNAME>, I will follow you.~
= ~I will always be near you.~
IF ~~ EXIT
END

IF ~~ TelziHand1.0
SAY ~(Telzi stares at your intertwined hands and finally looks up at you with eyes full of adoration.)~
= ~You are too kind to me.~
IF ~~ EXIT
END

IF ~~ TelziHand2.0
SAY ~(Telzi squeezes your hand in response to your public display of affection.)~
IF ~~ EXIT
END

IF ~~ TelziHand3.0
SAY ~(Your hand slips into Telzi's claw-like fingers and you are pleasantly surprised by how soft her palm feels.)~
IF ~~ EXIT
END

IF ~~ TelziExotic1.0
SAY ~Then the male wizard did something right.~
IF ~~ EXIT
END

IF ~~ TelziExotic2.0
SAY ~I hope you know I was not born looking like this.~
IF ~~ EXIT
END

IF ~~ TelziTall1.0
SAY ~(Without a word, Telzi lifts you high above the ground and places you on her shoulders.)~ 
= ~(You can feel the gentle breeze caress your skin and for a moment, you shiver in its glory.)~
= ~(Sensing your shiver, Telzi immediately sets you down.)~
= ~This is not the time for you to get sick, <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ TelziTall2.0
SAY ~(Telzi ponders your request for a moment before granting you your wish.)~
IF ~~ EXIT
END

IF ~~ TelziTall3.0
SAY ~Not today, <CHARNAME>. We have much to do and I am unsure if it safe here.~
IF ~~ EXIT
END

IF ~~ TelziHug1.0
SAY ~(While you embrace Telzi, you can hear her whisper something close to your head. What she is saying, you don't know, but Telzi seems to be content laying her head on top of yours.)~
IF ~~ EXIT
END

IF ~~ TelziHug2.0
SAY ~(Telzi returns your hug eagerly and holds you tightly.)~
IF ~~ EXIT
END

IF ~~ TelziHug3.0
SAY ~(Your hug makes Telzi stiffen, but after a few moments pass, she finally relaxes into your arms.)~
IF ~~ EXIT
END

IF ~~ TelziQuickLips1.0
SAY ~(Your kiss catches Telzi by surprise and she is left shocked as you gleefully turn away.)~
IF ~~ EXIT
END

IF ~~ TelziQuickLips2.0
SAY ~What a delicious taste.~
IF ~~ EXIT
END

IF ~Global("QI#TelziRomanceActive","GLOBAL",2)~ TelziQuickLips3.0
SAY ~You can be quite cruel, <CHARNAME>.~
= ~I only receive a taste of the real thing, even though you are here in front of me.~
= ~I hunger for more, maybe I will receive more tonight?~
IF ~~ EXIT
END

IF ~Global("QI#TelziRomanceActive","GLOBAL",2)~ TelziQuickLips4.0
SAY ~(You attempt to give a quick kiss on Telzi's lips.)~
= ~(At first, Telzi doesn't know how to react and she stares blankly at you.)~
= ~(The realization of your quick kiss finally strikes her and eyes light up brilliantly, while she releases a content sigh.)~
IF ~~ EXIT
END

IF ~~ TelziCheeck1.0
SAY ~(You see Telzi distractedly looking off into the distance, and you decide to surprise her with a light kiss on her cheek.)~
= ~(Telzi looks at you stunned for a moment, and red flush can be seen as she turns to face away from you.)~
IF ~~ EXIT
END

IF ~~ TelziCheek2.0
SAY ~(You take this opportunity to give Telzi a quick peck on her cheek.)~
= ~(As soon as your lips touch Telzi's cheek, her usual tense posture is quicky replaced by a more relaxed stance.)~
IF ~~ EXIT
END

IF ~~ TelziCheek3.0
SAY ~(As you attempt to plant a simple kiss on Telzi's cheek, she suddenly turns to face you, and you end up kissing the nape of her neck.)~
= ~(Telzi's eyes immediately light up and she reaches for the area where your lips have touched her.)~
= ~I have been blessed with your touch, I could not be happier.~
IF ~~ EXIT
END

IF ~~ TelziPassion1.0
SAY ~(Your tongue immediately entangles with Telzi's, and she wraps her strong, lean arms around your waist.)~
= ~(Your tongues are ferociously battling each other, and the faster and more intense the fighting goes on, the more tightly Telzi holds you.)~
= ~(Suddenly, Telzi releases you and takes a deep breath.)~
= ~This will continue soon...tonight.~
IF ~~ EXIT
END

IF ~~ TelziPassion2.0
SAY ~(Before you can turn to peer up at Telzi, it seems she already understand your intentions.)~
= ~(Her usual, hard stares are replaced by a look of absolute adoration and tenderness as her lips meet yours.)~
= ~(You both explore each other's mouths eagerly and soon, the two of you are panting for more air.)~
= ~(As Telzi breaks away from the kiss, she takes the chance to give one last kiss on your forehead.)~
IF ~~ EXIT
END

IF ~~ TelziPassion3.0
SAY ~(You walk briskly towards Telzi and she looks at curiously.)~
= ~(You tilt your head upwards, close your eyes, and partially open your mouth.)~
= ~(Not a moment sooner, you feel Telzi's warm lips upon yours and she embraces you tightly as your kiss deepens.)~
= ~(When the two of you finally pull away, you are left breathless and in a happier mood than before.)~
IF ~~ EXIT
END

IF ~~ TelziRegard4.0
SAY ~(You regard Telzi as she stands protectively in front of you - eyes forever staring at whatever could be behind you.)~
= ~(A single drop of sweat draws your attention and you watch as it makes its way down her neck and suddenly disappear into her bosom.)~
= ~(Your concentration is quickly interrupted by Telzi calling out to you. You quickly look away from her and return to the task at hand.)~
IF ~~ EXIT
END

IF ~~ TelziSleep1.0
SAY ~Will this be another one of our reading and writing sessions?~
++ ~Ha, no. I was thinking about something a little more...intimate.~ + TelziSleep1.1
++ ~That's not what I was thinking, but we can.~ + TelziSleep1.2
++ ~Never mind.~ + EXIT
END

IF ~~ TelziSleep1.1
SAY ~Meaning?~
++ ~You and me. In bed.~ + TelziSleep1.1a
++ ~Never mind.~ + EXIT
END

IF ~~ TelziSleep1.1a
SAY ~(You see a red blush creeping up on Telzi's face.) Ah, that is what you mean.~
= ~In that case, I cannot wait to be alone with you too.~   
IF ~~ EXIT
END

IF ~~ TelziSleep1.2
SAY ~Excellent. I enjoy our lessons.~
= ~These are the moments I treasure the most.~
IF ~~ EXIT
END

IF ~~ TelziSleep2.0
SAY ~(Telzi suddently becomes stiff and just when you are about to speak again, she takes you into her arms and passionately kisses you.~
= ~I cannot wait either.~
IF ~~ EXIT
END

IF ~~ TelziSleep3.0
SAY ~(Telzi gingerly places a kiss on your forehead and stares deeply into your eyes.)~
= ~The touch of your skin on my lips is enough to satisfy me until then.~
IF ~~ EXIT
END

IF ~~ WaitingUrgent
SAY ~This will seem blunt for you, but this has been on my mind since then.~
IF ~~ + tz4.1
END
