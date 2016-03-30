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
      name: {
        en:'Vietnam <br/> Thi & Dong (Married)'
        tw:'Vietnam <br/> Thi & Dong (結婚)'
      }
      story: {
        en:"We matched with each other since July 2015. Our first offline date was at Gia Dinh Park...It was extremely crowded on that day and it took us hours to find each other. When we finally met, we were so tired that there wasn't enough time to finish our chat and coffee. After 2 months, we decided to publicly put our relationship in serious stage. He made a surprise proposal and we are happily married 1 month ago.<br/><br/>Thank you Paktor for providing a platform to help people who are shy like me to find their true halves and nurture the relationship in a subtle way. Two strangers are linked together despite the difficulties we faced.<br/><br/>Once again, thank you Paktor for helping me find my eternal true love."
        tw:'2015年7月，我們在Paktor上配對成功。第一次的約會地點是在胡志明市的嘉定公園...當天人潮眾多，我們花了好幾個小時才找到對方。等到我們見到面，其實兩人早就都累趴了，所以我們後來沒聊幾句，喝完咖啡就散了。<br/>兩個月後，我們決定公開穩定交往中。隨後他安排了驚喜向我求婚，到現在我們結婚滿一個月，說真的能擁有彼此，天天都過得很開心！<br/><br/>感謝Paktor提供這樣的一個平台，讓像我這樣比較害羞被動的人，可以保有私人的交友空間，並且成功的在這裡找到人生的另一半。<br/>兩個原本相隔甚遠的陌生人，在這裡相遇，不畏任何艱難共創美麗的故事。<br/><br/>再次感謝Paktor，讓我能找到人生中的摯愛。'
      }
    }
    {
      index: 1
      name: {
        en:'Singapore <br/> Bryan & Venessa (Dating)'
        tw:'Singapore <br/> Bryan & Vanessa (熱戀中)'
      }
      story: {
        en:"We got matched on 29 Nov 2015 and I dropped her a text, beginning with the old cheesy mIRC era opening line.. \"\"A/S/L?\"\" and it was silent for a few hours until 11+ pm when she replied! We continued chatting and we met up on 11 Dec 2015 @ iDarts Safra Mt Faber. On 26 Dec 2015, I asked her to be my girlfriend and since then we are happily attached. 2 weeks ago, we spent our 1st Valentine's Day together and she had a sweet surprise from me. Today marks the 60th day we are together. I love you, Vanessa! <br/><br/> Paktor is a great platform for me to expand my social circle and meet potential partners. Without Paktor, I strongly believe that I would still be single and would have spent my Valentine's Day alone. Thank you Paktor for giving me the chance to meet my special one. :)"
        tw:'2015年11月29號，我們在Paktor上配對成功後，我就立刻留言給她，而且開頭第一句還很瞎，就是使用聊天室盛行年代的口吻說：「安安，幾歲住哪？」聊天室凍結了好幾個小時，直到晚上11點她才回我！<br/>之後我們時常聊天，終於在2015年12月11號見了面，當天我便向她告白了。自從那天起，我們每一天都過得很幸福快樂！兩個星期前，我們一起共度了第一個情人節，我準備了一個甜蜜驚喜給她。<br/>今天是我們在一起的第60天，我愛你Vanessa。<br/><br/>Paktor對我來說是一個有效拓展交友圈並且認識好對象的平台。要是沒有Paktor，我敢打賭我到現在一定還是單身，情人節只能自己一個人孤單地過。感謝Paktor讓我有機會遇到生命中那個特別的人 :)'
      }
    }
    {
      index: 15
      name: {
        en:'Indonesia <br/> Mariana & Christian (Dating)'
        tw:'Indonesia <br/> Mariana & Christian (熱戀中)'
      }
      story: {
        en:"I only took around two weeks to use Paktor before getting my match who became my boyfriend up till now. Surprisingly, we are from the same college. We've been dating for a year and hopefully we will be together forever.<br/><br/>Paktor is such a cool app that helps you to find some new friends or even a date!"
        tw:'我玩了Paktor大概兩個禮拜就跟我現在的男友配對成功了。令人驚喜的是，我們來自同一所大學！我們現在已經交往了一年，希望我們可以永遠在一起！<br/><br/>Paktor 是個超酷的app ，可以幫助你認識新朋友，甚至是找到約會交往對象！'
      }
    }
    {
      index: 9
      name: {
        en:'Malaysia <br/> Emily & Partner (Dating)'
        tw:'Malaysia <br/> Emily & 她的另一半 (熱戀中)'
      }
      story: {
        en:"We \"\"Kena\"\" (matched) each other on Paktor around late Apr 2015. After hanging out for some time, our official relationship started in July 2015. It has been almost 9 months by now. Everything is still going on well and we are committed to a serious relationship. I guess online dating has become essential in modern life where all working adults are busy and have no idea how to expand their social circle.<br/><br/>Paktor is such a cool app with sincere people. Thank you Paktor for making our relationship happen!"
        tw:'我們在Paktor上配對成功是2015年4月底的事了。在約過幾次會後，我們的戀情在2015年7月正式展開。直到現在，已經在一起快9個月了。<br/>我們的感情很穩定，雙方都非常認真的在經營。我認為網路交友對於現代人來說，是很重要的一部分，畢竟大家都忙於事業，不僅沒有時間也缺乏機會拓展交友圈。<br/><br/>Paktor 是個很酷的App，裡面的用戶也很友善。謝謝你Paktor，讓我們的愛情成真！'
      }
    }
    {
      index: 2
      name: {
        en:'Singapore <br/> Tricia & Mathew (Dating)'
        tw:'Singapore <br/> Tricia & Mathew (Dating)'
      }
      story: {
        en:"I met my boyfriend, Matthew, through Paktor in July last year. Our first date was pretty cheesy, we met at a Starbucks in town and things started off from there. It's close to almost 6 months since he asked me to be his girlfriend. He's the best thing in my life and I couldn't be happier. <br/><br/>Until today, it still feels pretty surreal how Matthew and I met through Paktor. We started off not expecting anything to happen and ended up finding someone we wanna spend our entire life with. I'm very thankful for Paktor for creating the opportunity for Matthew and I to meet each other :)"
        tw:"I met my boyfriend, Matthew, through Paktor in July last year. Our first date was pretty cheesy, we met at a Starbucks in town and things started off from there. It's close to almost 6 months since he asked me to be his girlfriend. He's the best thing in my life and I couldn't be happier. <br/><br/>Until today, it still feels pretty surreal how Matthew and I met through Paktor. We started off not expecting anything to happen and ended up finding someone we wanna spend our entire life with. I'm very thankful for Paktor for creating the opportunity for Matthew and I to meet each other :)"
      }
    }
    {
      index: 10
      name: {
        en:'Malaysia <br/> Eva & Boyfriend (Dating)'
        tw:'Malaysia <br/> Eva & 她的男友 (熱戀中)'
      }
      story: {
        en:"One of the most amazing feelings in the world is having someone fall in love with you when you think that finding a partner was hard.<br/><br/>Luckily, Paktor helped me a lot. Thank you Paktor!"
        tw:'這世上最美妙的時刻，就是當你覺得交不到男/女朋友時，發現有人愛上了你！<br/><br/>我真的非常幸運！Paktor謝謝你讓我相信愛情。謝謝你，Paktor！'
      }
    }
    {
      index: 6
      name: {
        en:'Vietnam <br/> San & Hai (Dating)'
        tw:'Vietnam <br/> San & Hal (熱戀中)'
      }
      story: {
        en:"It all started with simple conversations as we first matched in December 2014. We talked about our daily habits, work, friends and relationships. We hanged out a few times and then decided to officially date last year. At the moment, our relationship has grown significantly and I hope that he is going to propose to me soon.<br/><br/>Thank you for making my relationship so meaningful, please continue to improve your app and help more people to find their love."
        tw:'我們的故事是從2014年12月開始，起初只是在Paktor上配對然後開始聊天。<br/>聊天的主題不外乎就是日常生活、工作、朋友以及感情。我們出去過幾次後，便在去年決定要正式交往。<br/>此後，我們的感情進展得很快，我真希望他能快點向我求婚！<br/>這段關係對我來說意義非凡，謝謝你們讓我遇見他。希望你們的App能持續進步，幫助更多人找到真愛。'
      }
    }
    {
      index: 16
      name: {
        en:'Indonesia <br/> Vania & Aldo (Dating)'
        tw:'Indonesia <br/> Vania & Aldo (熱戀中)'
      }
      story: {
        en:"We met on Paktor in May last year and we decided to start our relationship two months after. We share many similar interests. He's a genuinely good guy and always tries to surprise me all the time.<br/><br/>Thank you Paktor for bringing us together and we are sure we love each other."
        tw:'我們是在去年五月在Paktor上認識的，兩個月後我們決定開始交往。我們有許多共同的興趣，我的男友是個很好的人並且總是帶給我很多的驚喜！！ <br/><br/>謝謝 Paktor 把我們帶到對方的身邊並彼此相愛。'
      }
    }
    {
      index: 17
      name: {
        en:'Indonesia <br/> Leonardi & Sheirine (Dating)'
        tw:'Indonesia <br/> Leonardi & Sheirine (熱戀中)'
      }
      story: {
        en:"A premium membership on Paktor gave me more opportunities to find a date. My girlfriend and I met on Paktor and I thank God that I finally found someone who made my dreams come true. We've been dating for two months and we continue to grow and deepen our love for one another.<br/><br/>Paktor has many fun features and it is easy to use!"
        tw:'成為 Paktor 尊榮會員讓我有更多配對約會的機會。我跟我女友是在 Paktor上認識，我非常感謝上帝讓我終於遇到我夢想中的那個人！我們已經戀愛約會了2個月，而且我們越來越愛彼此了！<br/><br/>Paktor 有超多有趣的功能而且簡單容易上手!'
      }
    }
    {
      index: 7
      name: {
        en:'Vietnam <br/> Hang & Long (Dating)'
        tw:'Vietnam <br/> Hang & Long (熱戀中)'
      }
      story: {
        en:"We first talked to each other through Paktor since May 2014. At the beginning, we just talked about our business life and our simple daily habits. He lives in Hanoi while I live in Ho Chi Minh which is why there are not many chances for us to meet up. Since last year October, I had a business trip in Hanoi which was an opportunity for us to meet and our relationship started to blossom. Although we haven't got any plans as we work in different locations, meeting 2 or 3 times per month, I hope that we can finally make a decision to move in together in the near future.<br/><br/>Thank you Paktor for helping two hearts separated by distance have a chance to connect beautifully."
        tw:'我們第一次透過Paktor聊天是在2014年5月。一開始只是聊聊工作，還有日常生活。他住在河內，而我住在胡志明市，所以其實我們並沒有什麼機會見面。<br/>不過去年10月，我剛好到河內出差，因此我們才有機會約出來見面，隨後展開戀情。<br/>雖然我們目前還沒有任何規劃，因為我們在不同的城市工作，每個月只能見2、3次面，但我真的很希望未來能達到共識一起過生活。<br/><br/>謝謝Paktor讓兩顆原本距離甚遠的心，能有個美麗的邂逅。'
      }
    }
    {
      index: 3
      name: {
        en:'Singapore <br/> Iris & Boyfriend (Dating)'
        tw:'Singapore <br/> Iris & 她的男友 (熱戀中)'
      }
      story: {
        en:"I met my current boyfriend when I was using Paktor. We had our first date watching a movie and going to East Coast Park for a cycling session. We hit it off almost instantly and got together after two months. We are getting married this year.<br/><br/>Paktor allows you to be more open to meeting friends and build up connections whether be it friendship or romance. It allows you to expand on your social circle."
        tw:'因為Paktor，我認識了現任男友。第一次約會，我們先去看了場電影，然後再去東海岸公園騎腳踏車。<br/>我們一見如故，兩個月後就在一起，而今年我們即將步入禮堂！<br/><br/>Paktor為我們創造更廣闊的交友空間，將我們連繫在一起。無論是友情也好，愛情也好，它讓我們拓展了自己的社交圈'
      }
    }
    {
      index: 11
      name: {
        en:'Malaysia <br/> Yvone & Boyfriend (Dating)'
        tw:'Malaysia <br/> Yvone & 她的男友 (熱戀中)'
      }
      story: {
        en:"I met him 2 years ago in Paktor and we started our love story until now. We have been to many places with each other.<br/><br/>Thank you Paktor for providing me a platform where miracles can happen."
        tw:'我是在 2 年前在 Paktor上認識男友的，然後就展開了我們之間的愛情故事，一起去很多地方，經歷很多開心的事，現在仍在幸福熱戀中。<br/><br/>謝謝 Paktor 提供了這樣的平台，讓奇蹟發生在我身上！'
      }
    }
    {
      index: 8
      name: {
        en:'Vietnam <br/> Duc & Linh (Dating)'
        tw:'Vietnam <br/> Duc & Linh (熱戀中)'
      }
      story: {
        en:"After exchanging a few introductory messages, we decided to meet up. We matched since April last year and now our love has grown like never before.<br/><br/>Love just comes to us naturally like it was meant to be and predestined.<br/><br/>Paktor is so awesome! I have found the missing puzzle in my heart. Thank you Paktor!"
        tw:'我們一開始向彼此介紹了一下自己，之後便約出來見面了。<br/>自從去年4月我們在Paktor配對成功，直到現在我們之間的感情是前所未有的深厚。<br/><br/>愛情來得太自然，這一切就如同命中注定。<br/><br/>Paktor實在是太棒了！讓我找到了她，完整了我的人生。謝謝你Paktor！'
      }
    }
    {
      index: 12
      name: {
        en:'Malaysia <br/> Shiyu & Partner (Dating)'
        tw:'Malaysia <br/> Shiyu & 她的夥伴 (熱戀中)'
      }
      story: {
        en:"We got to know each other through the Paktor app and talked for about 2 months before deciding to meet up.  Things flow naturally and we got together. Distance does keep us apart as I am in Sabah while he is in Sarawak. However, both of us still hold on to each other tightly and appreciate one another with a loving heart.<br/><br/>Without Paktor, there won't be us. Once again, it has proved that social apps can realize relationships. It just works like a miracle! Paktor, keep going and love you!"
        tw:'我們通過Paktor app 認識了彼此，在聊天了約2個月後我們決定見面。見面後空氣中流動著心動的感覺，很自然地我們在一起了。但距離讓我們分隔兩地，因為我在Sabah，而他在Sarawak。然而，我們仍然保持緊密的聯繫，欣賞並愛著彼此。 <br/>沒有 Paktor, 我們就不會在一起了。 再一次，這證明了交友app 不是只能有虛擬的戀愛關係。它就像一場奇蹟！ Paktor，繼續努力，愛你！'
      }
    }
    {
      index: 4
      name: {
        en:'Singapore <br/> Avian & Boyfriend (Dating)'
        tw:'Singapore <br/> Avian & Boyfriend (Dating)'
      }
      story: {
        en:"We first came across and \"\"Liked\"\" each other on Paktor in April 2014. After exchanging messages on Paktor for a while, we eventually exchanged phone numbers and began to text and call each other. I then plucked up my courage and asked her out to our first date on 3rd May 2014 to watch Show Luo's concert together with me. My heart was pounding out of my chest on that fateful day and I remember vividly that the first thing she ever said to me was \"\"Little boy\"\" as I was carrying a backpack with a Mickey Mouse plushie keychain.<br/><br/>Many dates proceeded thereafter and we officially got together on her birthday, 14th August 2014. It was one of the happiest moments of my life.<br/><br/>Fast forward to the present, we have been happily together for the past 18 months and 11 days. We are looking forward to bigger and more exciting plans for 2016 and 2017 as we look to crossover into our next phase of life together and hopefully settle down in our own lovely nest!<br/><br/>You guys provided a great platform for meeting sincere friends. Thank you Paktor for allowing us to have the chance to meet and fall in love!"
        tw:"We first came across and \"\"Liked\"\" each other on Paktor in April 2014. After exchanging messages on Paktor for a while, we eventually exchanged phone numbers and began to text and call each other. I then plucked up my courage and asked her out to our first date on 3rd May 2014 to watch Show Luo's concert together with me. My heart was pounding out of my chest on that fateful day and I remember vividly that the first thing she ever said to me was \"\"Little boy\"\" as I was carrying a backpack with a Mickey Mouse plushie keychain.<br/><br/>Many dates proceeded thereafter and we officially got together on her birthday, 14th August 2014. It was one of the happiest moments of my life.<br/><br/>Fast forward to the present, we have been happily together for the past 18 months and 11 days. We are looking forward to bigger and more exciting plans for 2016 and 2017 as we look to crossover into our next phase of life together and hopefully settle down in our own lovely nest!<br/><br/>You guys provided a great platform for meeting sincere friends. Thank you Paktor for allowing us to have the chance to meet and fall in love!"
      }
    }
    {
      index: 13
      name: {
        en:'Malaysia <br/> Jamie & Girlfriend (Dating)'
        tw:'Malaysia <br/> Jamie & 他的女友 (熱戀中)'
      }
      story: {
        en:"The first time I met her on Paktor, I felt the instant click and chemistry as we have so many things in common. We have been dating every single day since. However, as we both have to work at different places and countries soon, commitment to each other will be a challenge but I believe fate and loyalty will keep us together.<br/><br/>I never knew I could find someone who I can connect with on a social media platform. Thank you Paktor for bringing us together!"
        tw:'當我第一次在 Paktor上看到她的時候,我感覺到一股電擊跟化學反應出現，並且我們有超多的共同點。然而，因為我們在不同的國家生活上班，溝通跟維繫感情就變成了一項挑戰，但是我相信命運跟我們彼此的忠誠會讓我們一直在一起！<br/><br/>我從來不知道我會在交友平台上認識對象進而交往，謝謝 Paktor 讓我們在一起!'
      }
    }
    {
      index: 14
      name: {
        en:'Malaysia <br/> Jake & Girlfriend (Dating)'
        tw:'Malaysia <br/> Jake & 他的女友 (熱戀中)'
      }
      story: {
        en:"I met my girlfriend through Paktor. We started meeting each other after chatting for a few months and we are in a relationship since last Christmas.<br/><br/>I think Paktor is a pretty awesome app. It allows us to have the chance to start meeting people and find the right person. I liked you, you liked me too, so let's have a conversation!"
        tw:'我是在 Paktor上遇見我的女朋友，在聊了幾個月後我們開始見面約會，在去年聖誕節正式確定交往關係。<br/>我覺得 Paktor 真的是個很棒的 app，它讓我們有機會去認識新的人還因此找到對的人。我喜歡你，你喜歡我，那我們就開始聊天吧！'
      }
    }
    {
      index: 18
      name: {
        en:'Singapore <br/> Heng & Fiancé (Engaged)'
        tw:'Singapore <br/> Heng & 他的未婚妻 (已訂婚)'
      }
      story: {
        en:"I met my fiancé 3 years ago, on this app Paktor. We first hung out and we clicked. We have been friends for a month before we got together.<br/><br/>It's a great app. However, only if they can reduce the creepers on this app that would be better."
        tw:'我3年前在Paktor上遇見我的未婚妻。我們第一次見面就感到很契合，在一個月的相處下，我們決定在一起。<br/><br/>Paktor是個很棒的App。不過，要是可以過濾掉意圖不軌的使用者會更好。'
      }
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

