angular.module('PaktorApp',
  ['ui.router', 'ngAnimate', 'ui.bootstrap', 'ngScrollSpy','ngSanitize'])
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
  $scope.stories = [
    {
      index: 5
      name: 'Vietnam <br/> Thi & Dong (Married)'
      story: "We matched with each other since July 2015. Our first offline date was at Gia Dinh Park...It was extremely crowded on that day and it took us hours to find each other. When we finally met, we were so tired that there wasn't enough time to finish our chat and coffee. After 2 months, we decided to publicly put our relationship in serious stage. He made a surprise proposal and we are happily married 1 month ago.<br/><br/>Thank you Paktor for providing a platform to help people who are shy like me to find their true halves and nurture the relationship in a subtle way. Two strangers are linked together despite the difficulties we faced.<br/><br/>Once again, thank you Paktor for helping me find my eternal true love."
    }
    {
      index: 1
      name: 'Singapore <br/> Bryan & Venessa (Dating)'
      story: "We got matched on 29 Nov 2015 and I dropped her a text, beginning with the old cheesy mIRC era opening line.. \"\"A/S/L?\"\" and it was silent for a few hours until 11+ pm when she replied! We continued chatting and we met up on 11 Dec 2015 @ iDarts Safra Mt Faber. On 26 Dec 2015, I asked her to be my girlfriend and since then we are happily attached. 2 weeks ago, we spent our 1st Valentine's Day together and she had a sweet surprise from me. Today marks the 60th day we are together. I love you, Vanessa! <br/><br/> Paktor is a great platform for me to expand my social circle and meet potential partners. Without Paktor, I strongly believe that I would still be single and would have spent my Valentine's Day alone. Thank you Paktor for giving me the chance to meet my special one. :)"
    }
    {
      index: 15
      name: 'Indonesia <br/> Mariana & Christian (Dating)'
      story: "I only took around two weeks to use Paktor before getting my match who became my boyfriend up till now. Surprisingly, we are from the same college. We've been dating for a year and hopefully we will be together forever.<br/><br/>Paktor is such a cool app that helps you to find some new friends or even a date!"
    }
    {
      index: 9
      name: 'Malaysia <br/> Emily & Partner (Dating)'
      story: "We \"\"Kena\"\" (matched) each other on Paktor around late Apr 2015. After hanging out for some time, our official relationship started in July 2015. It has been almost 9 months by now. Everything is still going on well and we are committed to a serious relationship. I guess online dating has become essential in modern life where all working adults are busy and have no idea how to expand their social circle.<br/><br/>Paktor is such a cool app with sincere people. Thank you Paktor for making our relationship happen!"
    }
    {
      index: 2
      name: 'Singapore <br/> Tricia & Mathew (Dating)'
      story: "I met my boyfriend, Matthew, through Paktor in July last year. Our first date was pretty cheesy, we met at a Starbucks in town and things started off from there. It's close to almost 6 months since he asked me to be his girlfriend. He's the best thing in my life and I couldn't be happier. <br/><br/>Until today, it still feels pretty surreal how Matthew and I met through Paktor. We started off not expecting anything to happen and ended up finding someone we wanna spend our entire life with. I'm very thankful for Paktor for creating the opportunity for Matthew and I to meet each other :)"
    }
    {
      index: 10
      name: 'Malaysia <br/> Eva & Boyfriend (Dating)'
      story: "One of the most amazing feelings in the world is having someone fall in love with you when you think that finding a partner was hard.<br/><br/>Luckily, Paktor helped me a lot. Thank you Paktor!"
    }
    {
      index: 6
      name: 'Vietnam <br/> San & Hai (Dating)'
      story: "It all started with simple conversations as we first matched in December 2014. We talked about our daily habits, work, friends and relationships. We hanged out a few times and then decided to officially date last year. At the moment, our relationship has grown significantly and I hope that he is going to propose to me soon.<br/><br/>Thank you for making my relationship so meaningful, please continue to improve your app and help more people to find their love."
    }
    {
      index: 16
      name: 'Indonesia <br/> Vania & Aldo (Dating)'
      story: "We met on Paktor in May last year and we decided to start our relationship two months after. We share many similar interests. He's a genuinely good guy and always tries to surprise me all the time.<br/><br/>Thank you Paktor for bringing us together and we are sure we love each other."
    }
    {
      index: 17
      name: 'Indonesia <br/> Leonardi & Sheirine (Dating)'
      story: "A premium membership on Paktor gave me more opportunities to find a date. My girlfriend and I met on Paktor and I thank God that I finally found someone who made my dreams come true. We've been dating for two months and we continue to grow and deepen our love for one another.<br/><br/>Paktor has many fun features and it is easy to use!"
    }
    {
      index: 7
      name: 'Vietnam <br/> Hang & Long (Dating)'
      story: "We first talked to each other through Paktor since May 2014. At the beginning, we just talked about our business life and our simple daily habits. He lives in Hanoi while I live in Ho Chi Minh which is why there are not many chances for us to meet up. Since last year October, I had a business trip in Hanoi which was an opportunity for us to meet and our relationship started to blossom. Although we haven't got any plans as we work in different locations, meeting 2 or 3 times per month, I hope that we can finally make a decision to move in together in the near future.<br/><br/>Thank you Paktor for helping two hearts separated by distance have a chance to connect beautifully."
    }
    {
      index: 3
      name: 'Singapore <br/> Iris & Boyfriend (Dating)'
      story: "I met my current boyfriend when I was using Paktor. We had our first date watching a movie and going to East Coast Park for a cycling session. We hit it off almost instantly and got together after two months. We are getting married this year.<br/><br/>Paktor allows you to be more open to meeting friends and build up connections whether be it friendship or romance. It allows you to expand on your social circle."
    }
    {
      index: 11
      name: 'Malaysia <br/> Yvone & Boyfriend (Dating)'
      story: "I met him 2 years ago in Paktor and we started our love story until now. We have been to many places with each other.<br/><br/>Thank you Paktor for providing me a platform where miracles can happen."
    }
    {
      index: 8
      name: 'Vietnam <br/> Duc & Linh (Dating)'
      story: "After exchanging a few introductory messages, we decided to meet up. We matched since April last year and now our love has grown like never before.<br/><br/>Love just comes to us naturally like it was meant to be and predestined.<br/><br/>Paktor is so awesome! I have found the missing puzzle in my heart. Thank you Paktor!"
    }
    {
      index: 12
      name: 'Malaysia <br/> Shiyu & Partner (Dating)'
      story: "We got to know each other through the Paktor app and talked for about 2 months before deciding to meet up.  Things flow naturally and we got together. Distance does keep us apart as I am in Sabah while he is in Sarawak. However, both of us still hold on to each other tightly and appreciate one another with a loving heart.<br/><br/>Without Paktor, there won't be us. Once again, it has proved that social apps can realize relationships. It just works like a miracle! Paktor, keep going and love you!"
    }
    {
      index: 4
      name: 'Singapore <br/> Avian & Boyfriend (Dating)'
      story: "We first came across and \"\"Liked\"\" each other on Paktor in April 2014. After exchanging messages on Paktor for a while, we eventually exchanged phone numbers and began to text and call each other. I then plucked up my courage and asked her out to our first date on 3rd May 2014 to watch Show Luo's concert together with me. My heart was pounding out of my chest on that fateful day and I remember vividly that the first thing she ever said to me was \"\"Little boy\"\" as I was carrying a backpack with a Mickey Mouse plushie keychain.<br/><br/>Many dates proceeded thereafter and we officially got together on her birthday, 14th August 2014. It was one of the happiest moments of my life.<br/><br/>Fast forward to the present, we have been happily together for the past 18 months and 11 days. We are looking forward to bigger and more exciting plans for 2016 and 2017 as we look to crossover into our next phase of life together and hopefully settle down in our own lovely nest!<br/><br/>You guys provided a great platform for meeting sincere friends. Thank you Paktor for allowing us to have the chance to meet and fall in love!"
    }
    {
      index: 13
      name: 'Malaysia <br/> Jamie & Girlfriend (Dating)'
      story: "The first time I met her on Paktor, I felt the instant click and chemistry as we have so many things in common. We have been dating every single day since. However, as we both have to work at different places and countries soon, commitment to each other will be a challenge but I believe fate and loyalty will keep us together.<br/><br/>I never knew I could find someone who I can connect with on a social media platform. Thank you Paktor for bringing us together!"
    }
    {
      index: 14
      name: 'Malaysia <br/> Jake & Girlfriend (Dating)'
      story: "I met my girlfriend through Paktor. We started meeting each other after chatting for a few months and we are in a relationship since last Christmas.<br/><br/>I think Paktor is a pretty awesome app. It allows us to have the chance to start meeting people and find the right person. I liked you, you liked me too, so let's have a conversation!"
    }
    {
      index: 18
      name: 'Singapore <br/> Heng & Fiancé (Engaged)'
      story: "I met my fiancé 3 years ago, on this app Paktor. We first hung out and we clicked. We have been friends for a month before we got together.<br/><br/>It's a great app. However, only if they can reduce the creepers on this app that would be better."
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

