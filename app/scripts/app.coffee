angular.module('PaktorApp',
  ['ui.router', 'ngAnimate', 'ui.bootstrap', 'ngScrollSpy', 'ngRetina','ngSanitize'])
.run(($rootScope, $window)->
  angular.element($window).on 'resize scroll', ->
    $rootScope.$broadcast 'resize'
)
.config(($locationProvider)->
#  $locationProvider.html5Mode true
)
.controller('ModalVideoCtrl', ($uibModal)->
  @open = ->
    $uibModal.open
      templateUrl: 'myModalContent.html'
      controller: 'ModalVideoInstanceCtrl as videoInstance'
      size: 'lg'
  return
).controller('ModalVideoInstanceCtrl', ($modalInstance)->
  @close = -> $modalInstance.dismiss 'cancel'
  return
).controller('SendSMSCtrl', ($scope, $http)->
  $scope.countryCode = '65'
  $scope.sendDownloadLink = ->
    $http.post('http://www.letsgaigai.com/sendDownloadLink', {mobile: $scope.countryCode + $scope.mobile}).success (success)->
      $scope.sent = success
).controller('StoryCtrl', ($scope,$rootScope)->
  $scope.stories1 = [
    {
      index: 1
      name: 'Singapore <br/> Bryan & Vanessa (Dating)'
      story: "We got matched on 29 Nov 2015 and I dropped her a text, and it's begin with the old cheesy mIRC era opening line.. \"\"A/S/L?\"\" and it goes silence for a few hours until 11+ pm, she replied! We continued chatting and we met up on 11 Dec 2015 @ iDarts Safra Mt Faber. On 26 Dec 2015, I asked her to be my girlfriend and since then we are happily attached. 2 weeks ago, we spent our 1st Valentine's Day together and she have a sweet surprise from me. Today mark the 60th days we are together. I love you, Venessa! <br/><br/>Paktor is a great platform for me to expand my social circle and meet potential partners. Without Paktor, I strongly belief that I will still be single now and spent my Valentine day alone. Thank you Paktor for giving me the chance to meet my special one. :)"
    }
    {
      index: 2
      name: 'Singapore <br/> Tricia & Mathew (Dating)'
      story: "I met my Boyfriend, Matthew, through paktor in July last year. Our first date was pretty cheesy, we met at a Starbucks in town and things started off from there. It's close to almost 6 months since he asked me to be his Girlfriend. He's the best thing in my life and I couldn't be happier. <br/><br/> Until today, It still feels pretty surreal how Matthew and I met through Paktor. We started off not expecting anything to happen and ended up finding someone we wanna spend our entire life with. I'm very thankful for Paktor for creating the opportunity for Matthew and I to meet each other :)"
    }
    {
      index: 3
      name: 'Singapore <br/> Iris & Boyfriend (Dating)'
      story: "I met my current boyfriend when I was on Paktor. We had a first date at a movie and went east coast park for a cycling session. We hit it off almost instantly and was together after two months. We are getting married this year. <br/><br/>  Paktor allows you to be more open to meeting friends and build up connections whether it friendship or romance, paktor allows you to have a wider circle of the world."
    }
    {
      index: 4
      name: 'Singapore <br/> Avian & Boyfriend (Dating)'
      story: 'We first came across and ""Liked"" each other on Paktor in April 2014, after exchanging messages on Paktor for a while. We eventually exchanged phone numbers and began to text and call each other. I then plucked up my courage and asked her out to our first date on 3rd May 2014 to watch Show Luo\'s concert together with me. My heart was pounding out of my chest on that fateful day, i remember vividly that the first thing she ever said to me was ""Little boy"" as i was wearing a backpack with a mickey mouse plushie keychain. <br/><br/>Many dates proceeded thereafter and we officially got together on her birthday, 14th August 2014. It was one of the happiest moments of my life. <br/><br/>Fast forward to the present, we have been happily together for the past 18 months and 11 days. We are looking forward to bigger and more exciting plans for 2016 and 2017 as we look to crossover into our next phase of life together and hopefully settle down in our own lovely nest! <br/><br/>You guys provide a great platform for meeting sincere friends.Thank you Paktor for allowing us to have the chance to meet and fall in love!'
    }
  ]
  $scope.stories2 = [
    {
      index: 5
      name: 'Vietnam <br/> Thi & Dong (Married)'
      story: "We matched with each other since July 2015. Our first offline dating was at Gia Dinh Park...It was extremely crowded on that day that it took us hours to find each other. And finally when we met, we were so tired that we didn't even have time to finish our talk and coffee. After 2 months, we decided to publicly put our relationship in serious stage. He made a surprise proposal and we happily married 1 month ago. <br/><br/>Thank you Paktor for operating a platform to help people who are shy like me to find their true halves and nurture the relationship in a subtle way. Two strangers are linked together no matter what difficulties may restrain us.<br/><br/>Once again thank you Paktor for helping me find my true eternity love. "
    }
    {
      index: 6
      name: 'Vietnam <br/> San & Hai (Dating)'
      story: "It all started with simple converstaions as we first matched in December 2014. We talked about our daily habits, work, friends and relationships. We hanged out a few times and then decided to officially date last year. At the moment, our relationship has grown significantly and I hope that he is going to propose to me soon.<br/><br/>Thank you for making my relationship so meaningful, let's keep improving your app to help more people to find their love."
    }
    {
      index: 7
      name: 'Vietnam <br/> Hang & Long (Dating)'
      story: "We first talked to each other through Paktor since May 2014. At the beginning, we just talked about our business life and our simple daily habits. He lives in Hanoi while I live in Ho Chi Minh, that is why there are not many chances that we could meet up. Since last year October, I had a business trip in Hanoi which was the very opportunity for us to reunite and our relationship started to grow. Although we haven't got any plans as we have to work in different locaitons, only meeting 2 or 3 times per month. I hope that that we can finally make a decision to move in together in the near future. <br/><br/>Thank you Paktor for helping two hearts from distance had a chance to connect beautifully."
    }
    {
      index: 8
      name: 'Vietnam <br/> Duc & Linh (Dating)'
      story: "Exchanging a few introduction messages, and we decided to meet up. We matched since April last year and now our love expand like it has never happened before. <br/><br/>Love just come to us naturally like it was meant to be from thousands year ago.<br/><br/>Paktor is so awesome! I have found the missing puzzle of my heart. Thank you Paktor!"
    }
  ]
  $scope.stories3 = [
    {
      index: 9
      name: 'Malaysia <br/> Emliy & Partner (Dating)'
      story: '"We ""Kena"" (matched) each other on paktor around late Apr 2015. After some time of hanging out, our official relationship started in July 2015. So it has been almost 9 months by now. Everything is still going on well & we are committing a serious relationship. I Guess online dating has become essential in modern life where all working adults are busy and have no idea how to extent social circle. <br/><br/> Paktor is such a cool app with sincere people. Thanks Paktor to make it happen!"'
    }
    {
      index: 10
      name: 'Malaysia <br/> Eva & Boyfriend (Dating)'
      story: "One of the most amazing feelings in the world is having someone fall in love with you, who thought that finding a partner was hard?<br/><br/>But Paktor helped me a lot. Thank you Paktor."
    }
    {
      index: 11
      name: 'Malaysia <br/> Yvone & Boyfriend (Dating)'
      story: "I met him 2 years ago in Paktor and we started our love story until now. We have been to many places with each other.<br/><br/>Thank you Paktor for bringing me a place where miracle can happen."
    }
    {
      index: 12
      name: 'Malaysia <br/> Shiyu & Partner (Dating)'
      story: "We know each other via Paktor apps like about 2 months then decided to meet up & flows naturally we are together. Distance do keep us apart till now as i am in Sabah & he is in Sarawak. However, both of us still holding tightly, appreciate each another with heart of love.<br/><br/>Without Paktor, without us. Once again proven social media can realize relationships. It just works like a miracle! Paktor, keeps going, love ya."
    }
    {
      index: 13
      name: 'Malaysia <br/> Jamie & Girlfriend (Dating)'
      story: "The first time I met her on Paktor, I felt the instant click and chemistry as we had so many things in common. We have been dating every single day since. However, as we both have to work at different places and countries soon, commitment to each other will be a challenge but only fate and loyalty can finally bring us together.<br/><br/>I never knew I could find someone I could make a connection with on social media platform. Thank you Paktor for bringing us together"
    }
    {
      index: 14
      name: 'Malaysia <br/> Jake & Girlfriend (Dating)'
      story: "I met my girlfriend through Paktor. We start meeting each other after chatting for few months and we are in the relationship since the last Christmas.<br/><br/>I think Paktor is a pretty awesome apps. It allows the us to have a right reason to start meeting with the right person. I like you, you like me, so let's start a conversation."
    }
  ]
  $scope.stories4 = [
    {
      index: 15
      name: 'Indonesia <br/> Mariana & Christian (Dating)'
      story: "I only need around two weeks to play Paktor then got my match who became my boyfriend until now. Surprisingly, we're on the same college. We've been dating for a year and hopefully we will be together forever.<br/><br/>Paktor is such a cool app that can help you to find some new friends even a date! "
    }
    {
      index: 16
      name: 'Indonesia <br/> Vania & Aldo (Dating)'
      story: "We met on Paktor around May, last year and we decided to start our relationship two months after. We had many same interests. He's a genuinely good guy, he always tried to surprise me all the time.<br/><br/>Thank you Paktor for bringing us together and we sure we can love each other."
    }
    {
      index: 17
      name: 'Indonesia <br/> Leonardi & Sheirine (Dating)'
      story: "A premium membership on Paktor gave me more opportunities to find a date. Me and my girlfriend met on Paktor and I thank God that I finally found someone who made my dreams come true. We've been dating for two months and we grow and grow and deepen our love.<br/><br/>Paktor had many fun features and easy to play!"
    }
  ]
  $scope.changeStory = (s)->
    $rootScope.currentStory = s
)
.directive('clickToTop', ->
  (scope, element)->
    element.on 'click', ->
      document.body.scrollTop = 0
).directive('inViewport', ($timeout)->
  scope:
    isIn: '=inViewport'
    delay: '@'
  link: (scope, element)->
    resize = ->
      {top,bottom} = element[0].getBoundingClientRect()
      innerHeight = window.innerHeight or document.documentElement.clientHeight
      scope.isIn = top < innerHeight and bottom > 0
      scope.$apply()
    $timeout resize, if scope.delay then scope.delay * 1 else 1000
    scope.$on 'resize', resize
).directive('fitInWin', ($timeout)->
  (scope, element)->
    resize = ->
      $timeout.cancel scope.tick if scope.tick
      scope.tick = $timeout ->
        {height} = element[0].getBoundingClientRect()
        innerHeight = window.innerHeight or document.documentElement.clientHeight
        if height < innerHeight
          height = innerHeight + 'px'
          element.css {height}
      , 1000
    resize()
    scope.$on 'resize', resize
)

