# jQuery bxSliderIW v3.1.1
  
# Description
This is a fork of [jQuery bxSlider v3.1](https://github.com/psyrendust/bxslider) that adds an Infinite Width capability to the carousel.
[jQuery bxSlider v3.1](https://github.com/psyrendust/bxslider) is a fork of the original [bxSlider v3.0](https://github.com/wandoledzep/bxslider) library by [Steven Wanderski](https://github.com/wandoledzep).

# Table of Contents
- **[Options & API](#table-of-contents)**
- **[Release Notes](#releaseNotes)**
- **[Credits](#credits)**
- **[License](#license)**

# Options & API [(back to top)](#table-of-contents)
- **[General](#general)**
- **[Auto](#auto)**
- **[Pager](#pager)**
- **[Multiple display](#multiple-display)**
- **[Ticker](#ticker)**
- **[Public functions](#public-functions)**
- **[Callbacks](#callbacks)**

***

## GENERAL

**mode**  
Type of transition between each slide  
```js
default: 'horizontal'
options: 'horizontal', 'vertical', 'fade'
```

**speed**  
In ms, duration of time slide transitions will occupy  
```js
default: 500
```

**infiniteLoop**  
Display the first slide successively after the last  
```js
default: true
options: true, false
```

**controls**  
Display previous and next controls  
```js
default: true
options: true, false
```

**prevText**  
Text displayed for 'previous' control  
```js
default: 'prev'
options: string
```

**prevImage**  
Filepath of image used for 'previous' control. ex: `'images/prev.jpg'`  
```js
default: ''
options: string
```

**prevSelector**  
jQuery selector - element to contain the previous control. ex: `'#prev'`  
```js
default: ''
options: valid jQuery selector
```

**nextText**  
Text displayed for 'next' control  
```js
default: 'next'
options: string
```

**nextImage**  
Filepath of image used for 'next' control. ex: `'images/next.jpg'`  
```js
default: ''
options: string
```

**nextSelector**  
jQuery selector - element to contain the next control. ex: `'#next'`  
```js
default: null
options: valid jQuery selector
```

**startingSlide**  
Show will start on specified slide. Note: slides are zero based  
```js
default: 0
options: integer
```

**randomStart**  
If true show will start on a random slide  
```js
default: false
options: true, false
```

**hideControlOnEnd**  
If true, will hide 'next' control on last slide and 'prev' control on first  
```js
default: false
options: true, false
```

**captions**  
Display image captions (reads the image 'title' attribute)  
```js
default: false
options: true, false
```

**captionsSelector**  
jQuery selector - element to contain the captions. ex: `'#captions'`  
```js
default: null
options: valid jQuery selector
```

**wrapperClass**  
Classname attached to the slider wrapper  
```js
default: 'bx-wrapper'
options: string
```

**easing**  
Used with [jquery.easing.1.3.js](http://gsgd.co.uk/sandbox/jquery/easing/) - see [http://gsgd.co.uk/sandbox/jquery/easing/](http://gsgd.co.uk/sandbox/jquery/easing/) for available options  
```js
default: 'swing'
```

[(back to top)](#table-of-contents)

***

## AUTO

**auto**  
Make slide transitions occur automatically  
```js
default: false
options: true, false
```

**pause**  
In ms, the duration between each slide transition  
```js
default: 3000
options: integer
```

**autoControls**  
Display 'start' and 'stop' controls for auto show  
```js
default: false
options: true, false
```

**autoControlsSelector**  
jQuery selector - element to contain the auto controls. ex: `'#auto-controls'`  
```js
default: null
options: valid jQuery selector
```

**startText**  
Text displayed for 'start' control  
```js
default: 'start'
options: string
```

**startImage**  
Filepath of image used for 'start' control. ex: 'images/start.jpg'  
```js
default: ''
options: string
```

**stopText**  
Text displayed for 'stop' control  
```js
default: 'stop'
options: string
```

**stopImage**  
Filepath of image used for 'stop' control. ex: 'images/stop.jpg'  
```js
default: ''
options: string
```

**autoDelay**  
In ms, the amount of time before starting the auto show  
```js
default: 0
options: integer
```

**autoDirection**  
Direction in which auto show will traverse  
```js
default: 'next'
options: 'next', 'prev'
```

**autoHover**  
If true show will pause on mouse over  
```js
default: false
options: true, false
```

**autoStart**  
If false show will wait for 'start' control to be clicked to activate  
```js
default: true
options: true, false
```

[(back to top)](#table-of-contents)

***

## PAGER

**pager**  
Display a numeric pager  
```js
default: false
options: true, false
```

**pagerType**  
If 'full', pager displays 1,2,3... If 'short' pager displays 1 / 4  
```js
default: 'full'
options: 'full', 'short'
```

**pagerSelector**  
jQuery selector - element to contain the pager. ex: `'#pager'`  
```js
default: null
options: valid jQuery selector
```

**pagerLocation**  
Location of pager  
```js
default: 'bottom'
options: 'bottom', 'top'
```

**pagerShortSeparator**  
Characters used in between 'short' pager numbers. Ex: value 'of' would display 1 of 4  
```js
default: '/'
options: string
```

**pagerActiveClass**  
Classname attached to the active pager link  
```js
default: 'pager-active'
options: string
```

[(back to top)](#table-of-contents)

***

## MULTIPLE DISPLAY

**displaySlideQty**  
Number of slides to display at once  
```js
default: 1
options: integer
```

**moveSlideQty**  
Number of slides to move at once  
```js
default: 1
options: integer
```

[(back to top)](#table-of-contents)

***

## TICKER

**ticker**  
Continuous motion ticker mode (similar to a news ticker)  
```js
default: false
options: true, false
```

**tickerSpeed**  
Use a value between 1 and 5000 to determine ticker speed - the smaller the value the faster the ticker speed   
```js
default: 5000
options: integer
```

**tickerDirection**  
Direction in which ticker show will traverse  
```js
default: 'next'
options: 'next', 'prev'
```

**tickerHover**  
If true ticker will pause on mouseover  
```js
default: false
options: true, false
```

[(back to top)](#table-of-contents)

***

## CALLBACKS

**onBeforeSlide**  
Performs provided function before every slide transition  
```js
function(currentSlideNumber, totalSlideQty, currentSlideHtmlObject){
  // perform actions here
}
```

**onAfterSlide**  
Performs provided function after every slide transition. Note: function will be performed on slider initialization  
```js
function(currentSlideNumber, totalSlideQty, currentSlideHtmlObject){
  // perform actions here
}
```

**onFirstSlide**  
Performs provided function when the first slide is reached  
```js
function(currentSlideNumber, totalSlideQty, currentSlideHtmlObject){
  // perform actions here
}
```

**onLastSlide**  
Performs provided function when the last slide is reached  
```js
function(currentSlideNumber, totalSlideQty, currentSlideHtmlObject){
  // perform actions here
}
```

**onPrevSlide**  
Performs provided function when a 'previous' slide transition is performed  
```js
function(currentSlideNumber, totalSlideQty, currentSlideHtmlObject){
  // perform actions here
}
```

**onNextSlide**  
Performs provided function when a 'next' slide transition is performed  
```js
function(currentSlideNumber, totalSlideQty, currentSlideHtmlObject){
  // perform actions here
}
```

**buildPager**  
Calls provided function on each pager item  
```js
function(slideIndex, slideHtmlObject){
  // return output;
}
```

[(back to top)](#table-of-contents)

***

## PUBLIC FUNCTIONS

**goToSlide(slideIndex)**  
Got to the specified slide. Note: slide indices are zero based

**goToNextSlide()**  
Go to the next slide

**goToPreviousSlide()**  
Go to the previous slide

**goToFirstSlide()**  
Go to the previous slide

**goToLastSlide()**  
Go to the last slide

**getCurrentSlide()**  
Returns the current slide index

**getSlideCount()**  
Returns the number of total slides

**stopShow()**  
Stops an auto show

**startShow()**  
Starts an auto show

**stopTicker()**  
Stops a ticker show

**startTicker()**  
Starts a ticker show

**destroyShow()**  
Destroys the active slideshow

**reloadShow()**  
Reinitialize a slide show

[(back to top)](#table-of-contents)

***

# Release Notes
### 3.1.1 (4/23/2012):
- Forked from [jQuery bxSlider v3.1](https://github.com/psyrendust/bxslider).
- foo

### v3.1:
-  Fixed an issue where the *.bx-next* button would not hide if the *displaySlideQty* was greater than 1.

### v3.0:
- Forked from [bxSlider v3.0](https://github.com/wandoledzep/bxslider).

[(back to top)](#table-of-contents)

# Credits
Copyright 2011, Steven Wanderski  
[http://bxcreative.com](http://bxcreative.com)

Edited by Larry Gordon  
[http://blog.psyrendust.com](http://blog.psyrendust.com)

[(back to top)](#table-of-contents)

# License
Free to use and abuse under the MIT license.  
[http://www.opensource.org/licenses/mit-license.php](http://www.opensource.org/licenses/mit-license.php)  
[(back to top)](#table-of-contents)