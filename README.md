# 100apps
I'm creating 100 mobile apps in 100 days, inspired by [many other](https://www.google.com/search?q=100+apps+in+100+days&oq=100+apps+in+100+days) people who have done the same. Why? Mostly for fun, but also to learn enough to bring some ideas I have to life. I think we all learn best through repetition, and committing to an app a day helps keep Parkinson's Law at bay while iterating quickly and helping me learn from my mistakes.

I'll mostly be doing Swift/iOS, maybe some React Native. With the exception of the first few, each one will be a very compressed version of - requirements, UI design, and coding.

Requirements are in the form of [user stories](https://www.mountaingoatsoftware.com/agile/user-stories), and UI design is simple hand drawn wireframes.

I'll be starting with iOS (Swift). Since I'm totally new to Swift, the first 30 projects will be from [Hacking with Swift](https://www.hackingwithswift.com), probably verbatim with a few changes thrown in for funsies. The focus of these simple projects is to get productive with Swift so I can start the 'real' projects.

I tried starting out with a 'real' project (a simple Instagram viewer that would show pictures taken by people around you), but the additional complexity of making HTTP calls, dealing with OAuth, handling responses, etc... would mean I couldn't stick to the app-a-day rule. So until I get a handle on the most fundamental Swift concepts (and I'm spending the majority of my time coding instead of Googling), I'll stick to the toy projects.

# Apps

## Hacking with Swift

* [Day 1](day1) - Hacking with Swift first project, shows a list of local images and displays them.

* [Day 2](day2) - Hacking with Swift second project, a single view game that shows images of 3 flags, and the user has to tap the flag of the country indicated in the title bar. If the answer is correct, user's score goes up by one, and down by one if not. I made one change here: to display the current score in the toolbar (original just had the score in an alert).

* [Day 3](day3) - Hacking with Swift third project, adding share functionality to [Day 1](day1) project using iOS `UIActivityViewController`. One modification: checking to make sure an image is selected before invoking the sharing options and displaying an alert if an image wasn't selected (only applies to iPad versions).

* [Day 4](day4) - Hacking with Swift fourth project, working with web views using WebKit. Creates a webview with an action sheet of URLs that the user can select to navigate to.

* [Day 5](day5) - Hacking with Swift fifth project. Simple word game that asks the user to create words from the letters of a given word (loaded from a text file). Does some basic checks and error handling to make sure a word is real, it contains only the letters in the original word, is 3 characters or more, and the user hasn't already added a word. I modified this slightly by adding some more robust error handling.

* [Day 6](day6) - Hacking with Swift sixth project. A modification of Day 2 project to support viewing the game in landscape mode. Uses Auto Layout to specify constraints programmatically.

* [Day 7](day7) - Hacking with Swift seventh project. Introduces HTTP calls by requesting whitehouse.gov petitions, then parses the response JSON into a split view controller so the user can select each petition from a table view to see the detail of each petition. I made a few modifications here. Instead of copying the SwiftyJSON library into my project, I used CocoaPods to manage the depedency. I also modified the detail view to display petition text inside of a UILabel instead of a webview as in the original project.

* [Day 8](day8) - Hacking with Swift eighth project. Another word game, but this time a bit more complex. The user is given seven clues and groups of three letters. The user then has to make the words referring to the clues by tapping on the letter groups to come up with the answer. Once all answers are found a new level is loaded.

* [Day 9](day9) - Hacking with Swift ninth project. Just a copy of day 7, but instead of loading data on the main thread, this project uses Grand Central Dispatch to load data in the background without blocking the UI.

* [Day 10](day10) - Hacking with Swift tenth project. A new project that uses UICollectionView to allow the user to add a collection of people with a name associate to each one. Supports accessing the user's stored images and associating it with a UIImage in a cell within the UICollectionView.

* [Day 11](day11) - Hacking with Swift eleventh project. A simple 2D game using SpriteKit (based on Peggle). I made a few modifications: ball color changes randomly, balls are automatically dropped from the top of the screen (as opposed to coming from any height), and I gave the player a limit of 5 balls. With each successful hit in a good slot another ball is provided, while hits in a 'bad' slot reduce the number of balls by one. Once the number of balls reaches zero, the player's score resets.

* [Day 12](day12) - Hacking with Swift twelfth project. Modification of day 10 that uses NSUserDefaults to persist Person objects across app sessions.

* [Day 13](day13) - Hacking with Swift thirteenth project. Basic Core Image program that takes an image from the user's photo library and applies an image filter the user selects. Also includes an intensity slider, and allows the user to save the modified image to the device's photo library.

* [Day 14](day14) - Hacking with Swift fourteenth project. A whack-a-mole style game, only with penguins.

* [Day 15](day15) - Hacking with Swift fifteenth project. A simple project to test out Core Animation, transforms an image and animates it with a series of taps.

* [Day 16](day16) - Hacking with Swift sixteenth project. A Safari extension that allows the user to enter arbitrary JavaScript and have it execute on the current page.

* [Day 17](day17) - Hacking with Swift seventeenth project. A 'Fruit Ninja' style game that involves a lot of SpriteKit.

* [Day 18](day18) - Hacking with Swift eighteenth project. Shows how to use AppDelegate to set an app-wide option (in this case, an ad). Also includes a breakpoint, with a few other Xcode debugging techniques.

* [Day 19](day19) - Hacking with Swift nineteenth project. Just one MKMapView with a few pins dropped. Each pin has a title and information button that shows an alert with more information about the pinned city.

* [Day 20](day20) - A SpriteKit game that launches fireworks in a few patterns. The player selects fireworks of the same color, then shakes the device to 'explode' the fireworks and add to the player's score. Selecting more fireworks of the same color yields a higher score.

* [Day 21](day21) - A proof of concept for local and push notifications. A single view application with two buttons: one to register a local notification (prompting the user for permission to enable notifications), and one to schedule a local notification 5 seconds after the button is pressed. The Hacking with Swift tutorial only included local notifications, but I did a bit more configuration in AppDelegate to enable remote push notifications using the [Houston](https://github.com/nomad/Houston) command line tool for push notification testing.

* [Day 22](day22) - iBeacons. This app has a single view with one label and a background color, both of which change depending on how close the device is to the iBeacon (Immediate, Near, Far, etc...). The original Hacking with Swift tutorial used a device as a beacon, but I modified this to work with [Estimote](http://www.estimote.com) beacons and the Estimote SDK (which is nearly identical to Core Location protocol for beacons).

* [Day 23](day23) - Using multipeer connectivity to create a photosharing app. Users can connect to other devices to share pictures automatically. Uses a collection view and image picker to let users choose pictures to share from the camera roll. Once added to the collection view, the picture is automatically added to the connection view of other connected peers.

* [Day 24](day24) - Basic keychain and TouchID authentication. The app has a text area where users can type text that is saved to the keychain when the app is exited (closed, in the background, etc...). When the user opens the app again, they are asked to authenticate with TouchID, and a successful authentication shows what the user typed in the text field.

* [Day 25](day25) - Learning about Instruments. Took an intentionally buggy Hacking with Swift project and used the Allocations, Core Animation instruments to debug some issues with image caching and shadow rendering.

# App Ideas

1. Simple image viewer. Show a list of image titles in a table view that, when selected, opens a 'distraction-free', full screen view of the image.
2. Tip calculator. User enters in a bill total, selects what percentage tip he/she would like to leave, and the app displays the tip amount. The app also displays the total bill amount with the selected tip applied.
3. Tap Me! game. The object of the game is to tap a button as many times as possible in 30 seconds. The game will keep track of the user's score in real time, record the user's total score and save it across sessions, provide a 'high score' listing, and allow multiple users to record scores.
4. Simple image manipulation program (ala Instagram). Allow the user to select an image from photo library, apply one or more filters with intensity, and save the modified picture to disk.
5. US Capital cities game. A map pin is placed on a location in the US, and the user has to pick the right city from a list of choices. The app keeps track of how many the user has gotten right, with a high score.
