# Pre-work - *Tip_Calculator_IOS*

**Tip_Calculator_IOS** is a tip calculator application for iOS.

Submitted by: **Robert Hernandez**

Time spent: **20** hours spent in total

## User Stories

The following **required** functionality is complete:
* [X] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
I updated the code to show split bill and total value

The following **optional** features are implemented:
* [X] Settings page to change the default tip percentage.
extra page is to change colors
* [ ] UI animations
* [X] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [X] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!
* [X] UX improved
* [X] default_tip and subtotal is automatically saved(not split bill)
* [X] dark theme in setting page
* [X] change UX in setting page
## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/moNjLeA.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

I had a hard time testing out the saving, and whether or not have the saving the default
tip on the setting page or on the splash page. Ultimately, I choose to automatically save
when the view is closing, and loading when the view is appearing. I also decided
not to save the split amount, because you don't usually split the bill(assumption).
I didn't do the locale, because I am not familar where to start. As for the UI animations, I
watch some videos but couldn't really make any work.

## License

    Copyright 2016 Robert Hernandez

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.

## Extra
I am using the documentation found in [link](https://courses.codepath.com/snippets/ios_university/prework_university.md)