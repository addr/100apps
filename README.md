# 100apps
I'm creating 100 mobile apps in 100 days, inspired by [many other](https://www.google.com/search?q=100+apps+in+100+days&oq=100+apps+in+100+days) people who have done the same. Why? Mostly for fun, but also to learn enough to bring some ideas I have to life. I think we all learn best through repetition, and committing to an app a day helps keep Parkinson's Law at bay while iterating quickly and helping me learn from my mistakes.

I'll mostly be doing Swift/iOS, maybe some React Native. With the exception of the first few, each one will be a very compressed version of - requirements, UI design, and coding.

Requirements are in the form of [user stories](https://www.mountaingoatsoftware.com/agile/user-stories), and UI design is simple hand drawn wireframes.

I'll be starting with iOS (Swift). Since I'm totally new to Swift, the first projects will be from [Hacking with Swift](https://www.hackingwithswift.com), probably verbatim with a few changes thrown in for funsies. The focus of these simple projects is to get productive with Swift so I can start the 'real' projects.

I tried starting out with a 'real' project (a simple Instagram viewer that would show pictures taken by people around you), but the additional complexity of making HTTP calls, dealing with OAuth, handling responses, etc... would mean I couldn't stick to the app-a-day rule. So until I get a handle on the most fundamental Swift concepts (and I'm spending the majority of my time coding instead of Googling), I'll stick to the toy projects.

# Apps

* [Day 1](day1) - Hacking with Swift first project, shows a list of local images and displays them.

* [Day 2](day2) - Hacking with Swift second project, a single view game that shows images of 3 flags, and the user has to tap the flag of the country indicated in the title bar. If the answer is correct, user's score goes up by one, and down by one if not. I made one change here: to display the current score in the toolbar (original just had the score in an alert).

* [Day 3](day3) - Hacking with Swift third project, adding share functionality to [Day 1](day1) project using iOS `UIActivityViewController`. One modification: checking to make sure an image is selected before invoking the sharing options and displaying an alert if an image wasn't selected (only applies to iPad versions).

* [Day 4](day4) - Hacking with Swift fourth project, working with web views using WebKit. Creates a webview with an action sheet of URLs that the user can select to navigate to.

* [Day 5](day5) - Hacking with Swift fifth project. Simple word game that asks the user to create words from the letters of a given word (loaded from a text file). Does some basic checks and error handling to make sure a word is real, it contains only the letters in the original word, is 3 characters or more, and the user hasn't already added a word. I modified this slightly by adding some more robust error handling.
