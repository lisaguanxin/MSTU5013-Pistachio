# CODE THINGS

## THINGS I LOVE
- The last few weeks, both of you have been putting a lot more conscientious and directed effort toward understanding your respective code challenges with respect to this project and I appreciate that very much.
	- As you know, effort is important. But there is productive effort and unproductive effort. In the end of the semester, I saw you guys practicing more productive ways of putting in your energy and attentions so think about what that means.
- I'm VERY happy to see comments about your thinking about the code. This is something that is very very important when learning this stuff. One way that you can improve the effectiveness of articulating your thoughts for understanding, is to get even more specific about your inquiries. For example:

```javascript
	//read the data on the tag load (is it right to load it again in parent tag?) it is also where to write data to datatbase.
	var database = firebase.database();
	var departmentRef = database.ref('department');
	var tagRef = database.ref('mainTag');
```

- I might ask things like:
	- What is the state of the variable database after that line resolves?
		- What is firebase actually -> console.log(firebase);
		- What is database() giving me? -> console.log(firebase.database());
	- What happens next?
		- How does this next line affect the state of the var departmentRef?
		- What does database.ref('department') mean? -> console.log(...)
		- What is the importance of 'department'?
			- What if I changed this to... 'xxx'?
				- What do I expect the cause and effect of this change to be?
	- Etc.

- I'm plenty glad that you've managed to at least, reach a full-cycle of interaction in this app. Yes, it could be polished more but that's not what I'm looking for. Here, you have the main concept working which is: 1) user produces data, 2) program takes data and persists it on the database, 3) you retrieve data, 4) you express data as visual back to the user. That's the foundation of full-stack. And, in a nutshell - all programs are basically this repeated in different variations. That's really it. So yes - it was super challenging at the end to get this. But I think you should give yourself credits for getting to this point.
- Programming, isn't something to be afraid of. And personally I don't really care if you get it now or get it tomorrow. But really, think about this year and what you did differently the last couple weeks compared to the first and what that means in terms of learning. I suspect, there are many differences in the way you approached these things. And that's important.

## DEEPER COMMENTS
- When learning to code, I think taking existing pieces and manipulating parts, substituting values, etc. is a good way to learn cause and effect of things. That said, I do think the end goal should not be to manipulate collage of pieces _until it works_. The goal should be to manipulate things _until you understand how it works_. There is a difference. I think, we have discussed this in the later stages of the semester so this is more of a note for you as you move forward, if you are interested in learning this stuff better.

## SHALLOW COMMENTS
- Proper indentation / formatting
	- Why is this sooooo important?
	- There are still some aspects of this code where if you indent everything properly, you will notice some errors produced by misaligned, mismatched { curlyBraces }.
	- These absolutely make understanding 100x more difficult since they will mess up otherwise good code, the important bits and you'll never quite know what is correct or not. End up guessing and then never quite come to some assertion of what is true.
- You have Bootstrap aspects as indicated by your classes but no Bootstrap actually loaded. So I wonder whether you understand what those classes are and how they work. I think, if we had more time we might have been able to cover more of these kinds of things but I have a feeling now, if I asked you to go look at that and try to understand it - you might have a better toolset to approach it.


# Design Documentation

Overall, I think you might have done a little more to polish up the design documentation. Even though the technical side is challenging, this would have been an area where you could have gone more in depth to show me the way you think about interactive applications. Now, part of this is probably my fault too - as much as I think the design documentation is important - I tend to not have the time to really cover this thoroughly and consistently week to week to do it justice. Something I'm thinking about.

I think though, going back to the idea - that there is certain kind of knowledge / information that people in a community have and dont' have (around courses) and that a social approach to trying to uncover this information / make available - is interesting. But I often wonder about designs around the assumption, "if people can tell, they will."

Part of the goal I think going forward, would be to think hard about why people don't. Because when you think about it, it's not like people absolutely CAN'T share this information right now. Sure, an organizational problem exists so websites can be a tool to help collect such information. But I wonder if there isn't something even deeper here at the root. As a designer, I challenge you to think about whether the problems you're trying to solve are ones that "only you" _CAN_ solve. :-)

For example, could someone from the computer engineering department create a tool to collect socially produced information about courses and materials like the syllabus? If yes, then what does that mean in terms of how valuable the problem is to you as someone investing the time and thought into it. When I used to apply to a lot of business competitions around software ideas, one of the questions they all asked me was - "How are you uniquely fit to solve this problem, that no one else can solve?" I think it's an interesting question as it really forces you to think about how deep a problem is. A problem that can be solved with a solution that anyone can come up with probably means it's a general problem. Now, this is not to say it is an unimportant problem. But, I do think that you are in a learning technologies program to gain thinking skills around human learning and this could be a valuable weapon and angle of attack in your future endeavors. If you can answer "yes, this problem is something that only I can solve because of my unique knowledge in learning and technology" it is probably a good indicator that the problem itself is deep at least in that domain. So going back to the original point, if we examine a question like how do you get people to share hidden information about courses -> why don't people share such information -> beyond just, no easy way to... -> what else COULD be preventing this... ? Something social, cognitive, cultural? -> then now this becomes something quite unique to our field and specialty. See? :-) Again, this isn't a judgement of what you chose. But I do think you should think about and see the world in this way a little bit.

Yeah, as I read this - I do wish you guys put in some more polish. I see my own notes scattered about here so it doesn't quite look like you took the time to edit this into an actual document, rather - let's be honest - it's still really an outline. I get that there were probably other pressing concerns throughout the semester. ;-)

With regard to your structure - I think a challenge that might be interesting for you going forward is: If you had to edit your interaction design and information architecture charts, do you think you could make this diagram MORE SPECIFIC? (now that you have a better understanding of how the program actually runs?) Honestly, I think it'd be a great exercise to try and fix this (you don't have to, course is done, but if you want to grow) so that you specify the sequence and parts in more detail.

For your database schema, you really could just give me the pattern rather than the entire data.


# SUMMARY

So anyway, here are some of the thoughts that I had. I know there were challenges in this course. Some are technical. Some are actually more along the design parts. I think some of the suggestions I give are things you can continue to work on as you develop yourselves as part of this field and profession. Best,
