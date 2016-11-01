// Generated by CoffeeScript 1.10.0
(function() {
  angular.module('PaktorApp', ['ui.router', 'ngAnimate', 'ui.bootstrap', 'ngScrollSpy', 'ngSanitize', 'angulartics.facebook.pixel']).run(function($rootScope, $window) {
    return angular.element($window).on('resize scroll', function() {
      return $rootScope.$broadcast('resize');
    });
  }).config(function($locationProvider) {}).controller('DownloadCtrl', function($scope) {
    return $scope.download = function() {
      $scope.showStore = true;
      return fbq('track', 'download');
    };
  }).controller('ModalVideoCtrl', function($uibModal) {
    this.open = function() {
      return $uibModal.open({
        templateUrl: 'myModalContent.html',
        controller: 'ModalVideoInstanceCtrl as videoInstance',
        size: 'lg'
      });
    };
  }).controller('ModalVideoInstanceCtrl', function($modalInstance) {
    this.close = function() {
      return $modalInstance.dismiss('cancel');
    };
  }).controller('SendSMSCtrl', function($scope, $http) {
    $scope.countryCode = '65';
    return $scope.sendDownloadLink = function() {
      return $http.post('http://www.letsgaigai.com/sendDownloadLink', {
        mobile: $scope.countryCode + $scope.mobile
      }).success(function(success) {
        return $scope.sent = success;
      });
    };
  }).controller('StoryCtrl', function($scope, $rootScope) {
    $scope.stories = [
      {
        index: 5,
        country: 'Vietnam',
        name: {
          en: 'Vietnam <br/> Thi & Dong (Married)',
          ko: '베트남 - 티 & 동 (부부)',
          tw: '越南 <br/> Thi & Dong (結婚)'
        },
        story: {
          en: "We matched with each other since July 2015. Our first offline date was at Gia Dinh Park...It was extremely crowded on that day and it took us hours to find each other. When we finally met, we were so tired that there wasn't enough time to finish our chat and coffee. After 2 months, we decided to publicly put our relationship in serious stage. He made a surprise proposal and we are happily married 1 month ago.<br/><br/>Thank you Paktor for providing a platform to help people who are shy like me to find their true halves and nurture the relationship in a subtle way. Two strangers are linked together despite the difficulties we faced.<br/><br/>Once again, thank you Paktor for helping me find my eternal true love.",
          ko: "팍토르에서 우리는 2015년 7월에 연결되었고 Gia Dinh 공원에서 첫 데이트를 하였습니다. 미친듯이 사람이 많았고 서로를 찾는데만 한 두 시간이 걸렸습니다. 결국 만났지만 우리는 너무 피곤하고 시간도 많이 흘러서 대화할 시간이 충분하지 않았습니다. 그렇게 우리는 두 달동안 연락을 계속하였고 사귀기로 했습니다. 지금 그 때의 그 남친은 제게 프로포즈를 했고 한달 전부터 그는 제 남편이 되었습니다.<br/><br/>저처럼 부끄럼이 많은 사람이 사랑하는 사람을 만나 진정한 행복을 찾을 수 있도록 어플리케이션을 만들어 준 팍토르에 고맙다는 말씀 하고 싶네요. 만나기 힘든 낮선 두 사람이 하나로 연결되는 행복.<br/><br/>다시 한 번, 영원한 사랑을 제 품에 안겨주셔서 감사합니다.",
          tw: '2015年7月，我們在Paktor上配對成功。第一次的約會地點是在胡志明市的嘉定公園...當天人潮眾多，我們花了好幾個小時才找到對方。等到我們見到面，其實兩人早就都累趴了，所以我們後來沒聊幾句，喝完咖啡就散了。<br/>兩個月後，我們決定公開穩定交往中。隨後他安排了驚喜向我求婚，到現在我們結婚滿一個月，說真的能擁有彼此，天天都過得很開心！<br/><br/>感謝Paktor提供這樣的一個平台，讓像我這樣比較害羞被動的人，可以保有私人的交友空間，並且成功的在這裡找到人生的另一半。<br/>兩個原本相隔甚遠的陌生人，在這裡相遇，不畏任何艱難共創美麗的故事。<br/><br/>再次感謝Paktor，讓我能找到人生中的摯愛。'
        }
      }, {
        index: 1,
        country: 'Singapore',
        name: {
          en: 'Singapore <br/> Bryan & Venessa (Dating)',
          ko: "싱가포르에서 - 브라이언 & 바네사 (연인)",
          tw: '新加坡 <br/> Bryan & Vanessa (熱戀中)'
        },
        story: {
          en: "We got matched on 29 Nov 2015 and I dropped her a text, beginning with the old cheesy mIRC era opening line.. \"\"A/S/L?\"\" and it was silent for a few hours until 11+ pm when she replied! We continued chatting and we met up on 11 Dec 2015 @ iDarts Safra Mt Faber. On 26 Dec 2015, I asked her to be my girlfriend and since then we are happily attached. 2 weeks ago, we spent our 1st Valentine's Day together and she had a sweet surprise from me. Today marks the 60th day we are together. I love you, Vanessa! <br/><br/> Paktor is a great platform for me to expand my social circle and meet potential partners. Without Paktor, I strongly believe that I would still be single and would have spent my Valentine's Day alone. Thank you Paktor for giving me the chance to meet my special one. :)",
          ko: "2015년 11월 29일, 우리는 서로 매치되었고 저는 그녀에게 약간은 아재스러으면서 느끼한 짧은 메시지를 하나 보냈습니다. 몇 시간 동안 답장은 없었습니다. 저녁 11시가 넘는 늦은 저녁에 드디어 그녀에게 메시지가 도착했습니다! 우리는 계속 채팅을 이어갔고 2015년 12월 26일에 근사한 레스토랑에서 만나기로 했습니다. 저는 그녀에게 제 여자친구가 되어주겠냐고 물었고, 그 후 그녀는 제 반쪽이 되었습니다. 2 주 전 우리는 함께 맞이하는 첫 번 째 발렌타인을 보냈고 저는 초콜릿도 받았답니다. 모늘은 우리가 사귀기로 한 지 60일 째 되는 날입니다. 사랑합니다, 바네사!<br/><br/>팍토르는 제 사회 영역을 넓히고 새로운 사람을 만나기에 아주 좋은 곳 입니다. 팍토르가 없었다면, 지금껏 저는 혼자였을 테고 쓸쓸한 발렌타인 데이를 맞이하였을 겁니다. 저의 하나뿐인 여자친구를 만나게 해 준 팍토르 여러분께 감사하다는 말씀 전하고 싶습니다. ^^;",
          tw: '2015年11月29號，我們在Paktor上配對成功後，我就立刻留言給她，而且開頭第一句還很瞎，就是使用聊天室盛行年代的口吻說：「安安，幾歲住哪？」聊天室凍結了好幾個小時，直到晚上11點她才回我！<br/>之後我們時常聊天，終於在2015年12月11號見了面，當天我便向她告白了。自從那天起，我們每一天都過得很幸福快樂！兩個星期前，我們一起共度了第一個情人節，我準備了一個甜蜜驚喜給她。<br/>今天是我們在一起的第60天，我愛你Vanessa。<br/><br/>Paktor對我來說是一個有效拓展交友圈並且認識好對象的平台。要是沒有Paktor，我敢打賭我到現在一定還是單身，情人節只能自己一個人孤單地過。感謝Paktor讓我有機會遇到生命中那個特別的人 :)'
        }
      }, {
        index: 15,
        country: 'Indonesia',
        name: {
          en: 'Indonesia <br/> Mariana & Christian (Dating)',
          ko: "인도네시아 - 마리아나 & 크리스찬 (연인)",
          tw: '印尼 <br/> Mariana & Christian (熱戀中)'
        },
        story: {
          en: "I only took around two weeks to use Paktor before getting my match who became my boyfriend up till now. Surprisingly, we are from the same college. We've been dating for a year and hopefully we will be together forever.<br/><br/>Paktor is such a cool app that helps you to find some new friends or even a date!",
          ko: "지금 제 남친이 있기까지 저는 팍토르를 약 이 주일 정도 둘러봤었습다. <br/><br/>놀랍게도, 우리는 같은 대학 출신이더라고요. 그렇게 우리는 일 년 간 만났고 이제는 미래를 함께 바라보고 있습니다.<br/><br/>팍토르는 당신이 친구나 어떤 소중한 사람을 찾는 걸 도와줄 수 있는 멋진 어플입니다!",
          tw: '我玩了Paktor大概兩個禮拜就跟我現在的男友配對成功了。令人驚喜的是，我們來自同一所大學！我們現在已經交往了一年，希望我們可以永遠在一起！<br/><br/>Paktor 是個超酷的app ，可以幫助你認識新朋友，甚至是找到約會交往對象！'
        }
      }, {
        index: 9,
        country: 'Malaysia',
        name: {
          en: 'Malaysia <br/> Emily & Partner (Dating)',
          ko: "말레이시아 - 에밀리 & 남친 (연인)",
          tw: '馬來西亞 <br/> Emily & 她的另一半 (熱戀中)'
        },
        story: {
          en: "We \"\"Kena\"\" (matched) each other on Paktor around late Apr 2015. After hanging out for some time, our official relationship started in July 2015. It has been almost 9 months by now. Everything is still going on well and we are committed to a serious relationship. I guess online dating has become essential in modern life where all working adults are busy and have no idea how to expand their social circle.<br/><br/>Paktor is such a cool app with sincere people. Thank you Paktor for making our relationship happen!",
          ko: "우리가 팍토르에서 연결된 것은 아마 2015년 4월 말 즈음이었습니다. 몇 번의 만남 이후에 우리는 2015년 7월에 연인으로 발전했습니다. 벌써 9개월이 지났네요. 모든 게 순조롭게 진행중이며 이제는 더 깊은 관계로 한 발자국 앞으로 나아가려고 합니다. 어떻게 하면 인연과 우정의 관계를 늘릴 수 있는 지 생각할 겨를조차 없이 바쁜 직장인들로 가득찬 이 시대에 온라인 데이트 어플은 필수일겁니다.<br/><br/>팍토르는 그런 사람들에서 꽤 멋진 선물입니다. 우리의 인연을 만들어주고 연인으로 발전할 수 있게 해 준 팍토르에게 감사의 말 전하고 싶네요!",
          tw: '我們在Paktor上配對成功是2015年4月底的事了。在約過幾次會後，我們的戀情在2015年7月正式展開。直到現在，已經在一起快9個月了。<br/>我們的感情很穩定，雙方都非常認真的在經營。我認為網路交友對於現代人來說，是很重要的一部分，畢竟大家都忙於事業，不僅沒有時間也缺乏機會拓展交友圈。<br/><br/>Paktor 是個很酷的App，裡面的用戶也很友善。謝謝你Paktor，讓我們的愛情成真！'
        }
      }, {
        index: 2,
        country: 'Singapore',
        name: {
          en: 'Singapore <br/> Tricia & Mathew (Dating)',
          ko: "싱가포르 - 트리시아 & 매튜 (연인)",
          tw: '新加坡 <br/> Tricia & Mathew (熱戀中)'
        },
        story: {
          en: "I met my boyfriend, Matthew, through Paktor in July last year. Our first date was pretty cheesy, we met at a Starbucks in town and things started off from there. It's close to almost 6 months since he asked me to be his girlfriend. He's the best thing in my life and I couldn't be happier. <br/><br/>Until today, it still feels pretty surreal how Matthew and I met through Paktor. We started off not expecting anything to happen and ended up finding someone we wanna spend our entire life with. I'm very thankful for Paktor for creating the opportunity for Matthew and I to meet each other :)",
          ko: "저는 작년 7월에 팍토르에서 지금 제 남자친구인 매튜를 만났습니다. 첫 데이트는 누구나 하는 전형적인 만남이었습니다. 시내 스타벅스에서 만났고 거기서부터 인연을 조금씩 시작했거든요. 그가 저에게 여자친구가 되어주겠냐고 물어본지도 거의 6개월이 다 되어가네요. 그는 저에게 최고의 선물이고 더할나위 없이 행복합니다.<br/><br/>지금까지도 매튜와 제가 팍토르에서 만나서 이렇게 함께한다는 것이 실제 같지 않아요. 우리는 아무런 기대없이 팍토르를 시작했지만 결국엔 평생을 함께하고픈 인연을 만났네요. 매튜와 함께 할 수 있도록 기회를 준 팍토르에 고맙습니다.",
          tw: "去年7月，我在Paktor上遇到我現任男友 Matthew。第一次的約會地點其實滿無趣的，我們約在市中心的某間星巴克，然而這裡卻成為了故事的起點。<br/>距離他向我告白已經快要半年，如今他是我生命中最重要的人，沒有什麼事能比跟他在一起更快樂了！<br/><br/>直到今天，回想起當初我和Matthew在Paktor上相遇，還是感到很夢幻很不可思議。<br/>一開始我們對彼此其實都不抱有任何期待與想像，但最後我們卻發現彼此就是自己能依靠一輩子的對象。<br/><br/>真的非常感謝Paktor，是你讓我們找到彼此，遇見幸福 :)"
        }
      }, {
        index: 10,
        country: 'Malaysia',
        name: {
          en: 'Malaysia <br/> Eva & Boyfriend (Dating)',
          ko: "말레이시아 - 에바 & 남친 (연인)",
          tw: '馬來西亞 <br/> Eva & 她的男友 (熱戀中)'
        },
        story: {
          en: "One of the most amazing feelings in the world is having someone fall in love with you when you think that finding a partner was hard.<br/><br/>Luckily, Paktor helped me a lot. Thank you Paktor!",
          ko: "쉽게 찾지 못하는 당신의 이상형을 찾아 그 사람과 사랑에 빠지는 것은 이 세상에서 가장 아름다운 일 중 하나가 아닐까 생각합니다.<br/><br/>저는 운 좋게도 팍토르가 절 도왔군요.<br/>팍토르 고맙습니다.",
          tw: '這世上最美妙的時刻，就是當你覺得交不到男/女朋友時，發現有人愛上了你！<br/><br/>我真的非常幸運！Paktor謝謝你讓我相信愛情。謝謝你，Paktor！'
        }
      }, {
        index: 6,
        country: 'Vietnam',
        name: {
          en: 'Vietnam <br/> San & Hai (Dating)',
          ko: "베트남 - 산 & 하이 (연인)",
          tw: '越南 <br/> San & Hal (熱戀中)'
        },
        story: {
          en: "It all started with simple conversations as we first matched in December 2014. We talked about our daily habits, work, friends and relationships. We hanged out a few times and then decided to officially date last year. At the moment, our relationship has grown significantly and I hope that he is going to propose to me soon.<br/><br/>Thank you for making my relationship so meaningful, please continue to improve your app and help more people to find their love.",
          ko: "2014년 12월에 시작된 우리의 대화는 간단한 몇 마디로 시작했습니다. 우리는 습관, 직업, 친, 성격에 관한 이야기를 나눴고 몇 번의 만남 이후엔 본격적으로 데이트를 했습니다. 그 시기의 우리의 관계는 점 점 깊어졌고 이제 저는 그의 프로포즈를 기다리고 있습니다.<br/><br/>아름다운 만남을 이어주신 여러분께 감사드리며, 계속해서 더 많은 사람들이 자신의 반 쪽을 찾도록 힘써주세요.",
          tw: '我們的故事是從2014年12月開始，起初只是在Paktor上配對然後開始聊天。<br/>聊天的主題不外乎就是日常生活、工作、朋友以及感情。我們出去過幾次後，便在去年決定要正式交往。<br/>此後，我們的感情進展得很快，我真希望他能快點向我求婚！<br/>這段關係對我來說意義非凡，謝謝你們讓我遇見他。希望你們的App能持續進步，幫助更多人找到真愛。'
        }
      }, {
        index: 16,
        country: 'Indonesia',
        name: {
          en: 'Indonesia <br/> Vania & Aldo (Dating)',
          ko: "인도네시아 - 바니아 & 알도 (연인)",
          tw: '印尼 <br/> Vania & Aldo (熱戀中)'
        },
        story: {
          en: "We met on Paktor in May last year and we decided to start our relationship two months after. We share many similar interests. He's a genuinely good guy and always tries to surprise me all the time.<br/><br/>Thank you Paktor for bringing us together and we are sure we love each other.",
          ko: "우리는 작년 5월에 팍토르에서 만났고 그로부터 두 달 뒤부터 사귀기로 했습니다. 우리는 서로 나눌 관심사가 굉장히 비슷했습니다. 지금 제 남친은 정말 최고의 남자이고 항상 저에게 깜짝 선물을 해줍니다.<br/><br/>우리가 함께할 수 있게 해주고 서로의 사랑을 확인할 수 있게 해 준 팍토르 고맙습니다.",
          tw: '我們是在去年五月在Paktor上認識的，兩個月後我們決定開始交往。我們有許多共同的興趣，我的男友是個很好的人並且總是帶給我很多的驚喜！！ <br/><br/>謝謝 Paktor 把我們帶到對方的身邊並彼此相愛。'
        }
      }, {
        index: 17,
        country: 'Indonesia',
        name: {
          en: 'Indonesia <br/> Leonardi & Sheirine (Dating)',
          ko: "인도네시아 - 레오나르디 & 쉐린 (연인)",
          tw: '印尼 <br/> Leonardi & Sheirine (熱戀中)'
        },
        story: {
          en: "A premium membership on Paktor gave me more opportunities to find a date. My girlfriend and I met on Paktor and I thank God that I finally found someone who made my dreams come true. We've been dating for two months and we continue to grow and deepen our love for one another.<br/><br/>Paktor has many fun features and it is easy to use!",
          ko: "팍토르의 프리미엄 멤버쉽은 제게 사랑을 찾을 수 있는 기회를 주었습니다. 제 여친과 저는 팍토르에서 만났고 제가 꿈꿔왔던 사람을 만나서 너무 행복합니다. 우리는 두 달 동안 사귀고 있고 점 점 그 사랑이 깊어지고 있습니다.<br/><br/>팍토르는 재미있고 쉽습니다!",
          tw: '成為 Paktor 尊榮會員讓我有更多配對約會的機會。我跟我女友是在 Paktor上認識，我非常感謝上帝讓我終於遇到我夢想中的那個人！我們已經戀愛約會了2個月，而且我們越來越愛彼此了！<br/><br/>Paktor 有超多有趣的功能而且簡單容易上手!'
        }
      }, {
        index: 7,
        country: 'Vietnam',
        name: {
          en: 'Vietnam <br/> Hang & Long (Dating)',
          ko: "베트남 - 항 & 롱 (연인)",
          tw: '越南 <br/> Hang & Long (熱戀中)'
        },
        story: {
          en: "We first talked to each other through Paktor since May 2014. At the beginning, we just talked about our business life and our simple daily habits. He lives in Hanoi while I live in Ho Chi Minh which is why there are not many chances for us to meet up. Since last year October, I had a business trip in Hanoi which was an opportunity for us to meet and our relationship started to blossom. Although we haven't got any plans as we work in different locations, meeting 2 or 3 times per month, I hope that we can finally make a decision to move in together in the near future.<br/><br/>Thank you Paktor for helping two hearts separated by distance have a chance to connect beautifully.",
          ko: "우리는 팍토르에서 2014년 5월에 처음으로 만났습니다. 처음 우리는 직장생활이나 성격 및 일상생활에 대해 이야기를 나눳습니다. 그는 하노이에 살고 저는 호치민에 살고있습니다. 뭐 먼 거리 때문에 우리는 만날 기회가 없었고요. 작년 10월부터 저는 하노이에 있는 직장으로 옮기게 되었고 드디어 그를 만났고 사귀게 되었죠. 조금은 떨어진 곳에서 일하느라 한 달에 두 세 번빡에는 만나지를 못했지만 조만간 함께 생활하기로 결정했습니다.<br/><br/>먼 거리 만큼이나 쌓인 서로에대한 그리움을 아름답게 연결시켜준 팍토르에 감사의 인사 전하고 싶습니다.",
          tw: '我們第一次透過Paktor聊天是在2014年5月。一開始只是聊聊工作，還有日常生活。他住在河內，而我住在胡志明市，所以其實我們並沒有什麼機會見面。<br/>不過去年10月，我剛好到河內出差，因此我們才有機會約出來見面，隨後展開戀情。<br/>雖然我們目前還沒有任何規劃，因為我們在不同的城市工作，每個月只能見2、3次面，但我真的很希望未來能達到共識一起過生活。<br/><br/>謝謝Paktor讓兩顆原本距離甚遠的心，能有個美麗的邂逅。'
        }
      }, {
        index: 3,
        country: 'Singapore',
        name: {
          en: 'Singapore <br/> Iris & Boyfriend (Dating)',
          ko: "싱가포르 - 아이리스 & 남친 (연인)",
          tw: '新加坡 <br/> Iris & 她的男友 (熱戀中)'
        },
        story: {
          en: "I met my current boyfriend when I was using Paktor. We had our first date watching a movie and going to East Coast Park for a cycling session. We hit it off almost instantly and got together after two months. We are getting married this year.<br/><br/>Paktor allows you to be more open to meeting friends and build up connections whether be it friendship or romance. It allows you to expand on your social circle.",
          ko: "저는 지금 남친을 팍토르에서 만났습니다. 첫 데이트에서는 이스트 코스트 파크에서 자전거를 타고 영화를 봤지요. 우리는 순식간에 빠져들었고 2 달 동안 사귀고 있습니다. 올 해는 결혼하려고요.<br/><br/>팍토르는 사랑과 우정에 상관없이 새로운 사람들과의 연결고리를 만들어 주고 친구를 만날 수 있게 당신을 도와줄겁니다. 당신의 친구 영역을 더 넓혀보세요.",
          tw: '因為Paktor，我認識了現任男友。第一次約會，我們先去看了場電影，然後再去東海岸公園騎腳踏車。<br/>我們一見如故，兩個月後就在一起，而今年我們即將步入禮堂！<br/><br/>Paktor為我們創造更廣闊的交友空間，將我們連繫在一起。無論是友情也好，愛情也好，它讓我們拓展了自己的社交圈'
        }
      }, {
        index: 11,
        country: 'Malaysia',
        name: {
          en: 'Malaysia <br/> Yvone & Boyfriend (Dating)',
          ko: "말레이시아 - 이본 & 남친 (연인)",
          tw: '馬來西亞 <br/> Yvone & 她的男友 (熱戀中)'
        },
        story: {
          en: "I met him 2 years ago in Paktor and we started our love story until now. We have been to many places with each other.<br/><br/>Thank you Paktor for providing me a platform where miracles can happen.",
          ko: "2년 전 팍토르에서 그를 만나서 사랑이 싹텄고 지금까지 그 사랑을 키워가고 있습니다. 우리는 함께 여러 곳을 다니며 행복합니다.<br/><br/>이런 기적이 일어날 수 있게해준 팍토르에게 고맙다고 말하고 싶네요.",
          tw: '我是在 2 年前在 Paktor上認識男友的，然後就展開了我們之間的愛情故事，一起去很多地方，經歷很多開心的事，現在仍在幸福熱戀中。<br/><br/>謝謝 Paktor 提供了這樣的平台，讓奇蹟發生在我身上！'
        }
      }, {
        index: 8,
        country: 'Vietnam',
        name: {
          en: 'Vietnam <br/> Duc & Linh (Dating)',
          ko: "",
          tw: '越南 <br/> Duc & Linh (熱戀中)'
        },
        story: {
          en: "After exchanging a few introductory messages, we decided to meet up. We matched since April last year and now our love has grown like never before.<br/><br/>Love just comes to us naturally like it was meant to be and predestined.<br/><br/>Paktor is so awesome! I have found the missing puzzle in my heart. Thank you Paktor!",
          ko: "2년 전 팍토르에서 그를 만나서 사랑이 싹텄고 지금까지 그 사랑을 키워가고 있습니다. 우리는 함께 여러 곳을 다니며 행복합니다.<br/><br/>이런 기적이 일어날 수 있게해준 팍토르에게 고맙다고 말하고 싶네요.",
          tw: '我們一開始向彼此介紹了一下自己，之後便約出來見面了。<br/>自從去年4月我們在Paktor配對成功，直到現在我們之間的感情是前所未有的深厚。<br/><br/>愛情來得太自然，這一切就如同命中注定。<br/><br/>Paktor實在是太棒了！讓我找到了她，完整了我的人生。謝謝你Paktor！'
        }
      }, {
        index: 12,
        country: 'Malaysia',
        name: {
          en: 'Malaysia <br/> Shiyu & Partner (Dating)',
          ko: "말레이시아 - 시유 & 남친 (연인)",
          tw: '馬來西亞 <br/> Shiyu & 她的夥伴 (熱戀中)'
        },
        story: {
          en: "We got to know each other through the Paktor app and talked for about 2 months before deciding to meet up.  Things flow naturally and we got together. Distance does keep us apart as I am in Sabah while he is in Sarawak. However, both of us still hold on to each other tightly and appreciate one another with a loving heart.<br/><br/>Without Paktor, there won't be us. Once again, it has proved that social apps can realize relationships. It just works like a miracle! Paktor, keep going and love you!",
          ko: "실제로 데이트를 하기 전 우리는 두 달 정도 우리가 만난 팍토르에서 이야기를 나눴습니다. 모든 것이 순조로왔고 이제 우리는 함께랍니다. 제가 있는 사바에서 그가 있는 사라왁까지의 먼 거리는 우리를 갈라놓았지만, 우리는 진심어린 사랑으로 서로에게 의지하며 함께하고 있습니다.<br/><br/>팍토르가 없었다면, '우리'는 없었을겁니다. 정말 기적과도 같네요! 팍토르, 솔로들을 위해 계속해서 힘써주세요 그리고 사랑합니다!",
          tw: '我們通過Paktor app 認識了彼此，在聊天了約2個月後我們決定見面。見面後空氣中流動著心動的感覺，很自然地我們在一起了。但距離讓我們分隔兩地，因為我在Sabah，而他在Sarawak。然而，我們仍然保持緊密的聯繫，欣賞並愛著彼此。 <br/>沒有 Paktor, 我們就不會在一起了。 再一次，這證明了交友app 不是只能有虛擬的戀愛關係。它就像一場奇蹟！ Paktor，繼續努力，愛你！'
        }
      }, {
        index: 4,
        country: 'Singapore',
        name: {
          en: 'Singapore <br/> Avian & Boyfriend (Dating)',
          ko: "싱가포르 - 애비앙 & 남친 (연인)",
          tw: '新加坡 <br/> Avian & 她的男友 (熱戀中)'
        },
        story: {
          en: "We first came across and \"\"Liked\"\" each other on Paktor in April 2014. After exchanging messages on Paktor for a while, we eventually exchanged phone numbers and began to text and call each other. I then plucked up my courage and asked her out to our first date on 3rd May 2014 to watch Show Luo's concert together with me. My heart was pounding out of my chest on that fateful day and I remember vividly that the first thing she ever said to me was \"\"Little boy\"\" as I was carrying a backpack with a Mickey Mouse plushie keychain.<br/><br/>Many dates proceeded thereafter and we officially got together on her birthday, 14th August 2014. It was one of the happiest moments of my life.<br/><br/>Fast forward to the present, we have been happily together for the past 18 months and 11 days. We are looking forward to bigger and more exciting plans for 2016 and 2017 as we look to crossover into our next phase of life together and hopefully settle down in our own lovely nest!<br/><br/>You guys provided a great platform for meeting sincere friends. Thank you Paktor for allowing us to have the chance to meet and fall in love!",
          ko: "2014년 4월에 우리는 팍토르에서 서로를 마음에 들어해서 오른쪽으로 넘겼습니다. 팍토르에서 메시지 교환 후, 우리는 서로에게 전화번호를 주고 연락을 했습니다. 그는 저에게 Luo의 콘서트를 함께 보자며 2014년 5월 3일에 데이트 신청을 받았습니다. 그 날 제 심장은 뛰었고 미키마우스 백팩을 멘 저에게 그가 처음으로 했던 '꼬멩이'라는 말을 생생히 기억합니다.<br/><br/>우리는 그후로도 여러번 만났고 그의 생일인 2014년 8월 14일에 공식적으로 사귀기로 했습니다. 정말 제 인생에서 제일 행복했던 순간이었습니다.<br/><br/>현재, 지난 18개월 11일 동안 행복을 나누며 함께 했습니다. 2016년과 2017년에는 결혼해서 한 둥지에 함께 사는 설레임 가득한 꿈을 만들고 있습니다.<br/><br/>저에게게 이렇게 잘생긴 반쪽을 만날 수 있도록 멋진 상품을 만들어 준 팍토르에게 고맙다는 말 전하고 싶습니다!",
          tw: "2014年4月，我們在Paktor上初次相遇並且「喜歡」對方。在Paktor互傳訊息一陣子之後，我們終於交換了電話號碼，開始傳簡訊甚至打電話。<br/>不久之後，我鼓起勇氣約她一起去看羅志祥2014年5月3號的演唱會。當天我的心跳跳得超快，而且我深深記得她見到我說的第一句話是：「小孩男！」因為我當天背了一個後背包出門，上面還掛了一個米老鼠娃娃的鑰匙圈。<br/><br/>之後我們約會了好幾次，並且在她生日那天正式在一起，就是2014年8月14號。這真的是我人生中最快樂的時刻！<br/><br/>直到今天，我們已經幸福地共度了18個月又11天。我們期待在2016以及2017有更長遠及令人興奮的計畫，我們正規劃要走進人生的下一個階段，希望可以共築我們愛的小窩！<br/><br/>你們真的提供了一個很棒的交友平台。謝謝Paktor讓我們能相遇且相愛！"
        }
      }, {
        index: 13,
        country: 'Malaysia',
        name: {
          en: 'Malaysia <br/> Jamie & Girlfriend (Dating)',
          ko: "말레이시아 - 제이미 & 여친 (연인)",
          tw: '馬來西亞 <br/> Jamie & 他的女友 (熱戀中)'
        },
        story: {
          en: "The first time I met her on Paktor, I felt the instant click and chemistry as we have so many things in common. We have been dating every single day since. However, as we both have to work at different places and countries soon, commitment to each other will be a challenge but I believe fate and loyalty will keep us together.<br/><br/>I never knew I could find someone who I can connect with on a social media platform. Thank you Paktor for bringing us together!",
          ko: "제가 처음으로 그녀를 팍토르에서 보았을 때 우리는 순식간에 빠져들었고 너무 많은 공통점에 놀랐습니다. 그 후 우리는 매일 매일 만나고 있습니다. 하지만, 곧 우리는 다른 나라 다른 지역에서 일하게 되었습니다. 먼 거리처럼 많은 장애물이 우리 앞에 다가오지만 저는 우리가 계속해서 서로에게 잘 할거라고 믿고 있습니다.<br/><br/>소셜 네트워크 시스템을 통해 제 사랑을 찾을거라곤 꿈에도 몰랐습니다. 우리를 함께하게 해줘서 고맙습니다 팍토르!",
          tw: '當我第一次在 Paktor上看到她的時候,我感覺到一股電擊跟化學反應出現，並且我們有超多的共同點。然而，因為我們在不同的國家生活上班，溝通跟維繫感情就變成了一項挑戰，但是我相信命運跟我們彼此的忠誠會讓我們一直在一起！<br/><br/>我從來不知道我會在交友平台上認識對象進而交往，謝謝 Paktor 讓我們在一起!'
        }
      }, {
        index: 14,
        country: 'Malaysia',
        name: {
          en: 'Malaysia <br/> Jake & Girlfriend (Dating)',
          ko: "말레이시아 - 제이크 & 여친 (연인)",
          tw: '馬來西亞 <br/> Jake & 他的女友 (熱戀中)'
        },
        story: {
          en: "I met my girlfriend through Paktor. We started meeting each other after chatting for a few months and we are in a relationship since last Christmas.<br/><br/>I think Paktor is a pretty awesome app. It allows us to have the chance to start meeting people and find the right person. I liked you, you liked me too, so let's have a conversation!",
          ko: "저는 제 여친과 팍토르에서 만났습니다. 몇 달 정도 계속 채팅으로만 대화를 나누다 결국 만났고 지난 크리스마스부터 사귀기로 했습니다. <br/><br/>저에게 팍토르는 꽤 멋진 어플입니다. 여러 사람과 만날 수 있게 해주고 제가 바라던 사람를 찾게 해주었으니까요. 저는 당신이 좋아요, 당신도 절 좋아하고요, 그렇다면 대화를 나눠보세요! ",
          tw: '我是在 Paktor上遇見我的女朋友，在聊了幾個月後我們開始見面約會，在去年聖誕節正式確定交往關係。<br/>我覺得 Paktor 真的是個很棒的 app，它讓我們有機會去認識新的人還因此找到對的人。我喜歡你，你喜歡我，那我們就開始聊天吧！'
        }
      }, {
        index: 18,
        country: 'Singapore',
        name: {
          en: 'Singapore <br/> Heng & Fiancé (Engaged)',
          ko: "싱가포르 - 헹 & 약혼녀 (약혼)",
          tw: '新加坡 <br/> Heng & 他的未婚妻 (已訂婚)'
        },
        story: {
          en: "I met my fiancé 3 years ago, on this app Paktor. We first hung out and we clicked. We have been friends for a month before we got together.<br/><br/>It's a great app. However, only if they can reduce the creepers on this app that would be better.",
          ko: "저는 3년 전에 팍토르에서 저의 약혼녀를 만났습니다. 처음엔 그냥 매칭이 되어서 연락을 하였고 그렇게 3 개월 동안은 친구처럼 지냈습니다. 그 후 우리는 연인이 되었고요.<br/><br/>정말 괜찮은 어플입니다. 하지만 약간의 성가신 부분만 줄인다면 더 좋겠네요.",
          tw: '我3年前在Paktor上遇見我的未婚妻。我們第一次見面就感到很契合，在一個月的相處下，我們決定在一起。<br/><br/>Paktor是個很棒的App。不過，要是可以過濾掉意圖不軌的使用者會更好。'
        }
      }
    ];
    return $scope.changeStory = function(s) {
      return $rootScope.currentStory = s;
    };
  }).directive('clickToTop', function() {
    return function(scope, element) {
      return element.on('click', function() {
        return document.body.scrollTop = 0;
      });
    };
  }).directive('inViewport', function($timeout) {
    return {
      scope: {
        isIn: '=inViewport',
        delay: '@'
      },
      link: function(scope, element) {
        var resize;
        resize = function() {
          var bottom, innerHeight, ref, top;
          ref = element[0].getBoundingClientRect(), top = ref.top, bottom = ref.bottom;
          innerHeight = window.innerHeight || document.documentElement.clientHeight;
          scope.isIn = top < innerHeight && bottom > 0;
          return scope.$apply();
        };
        $timeout(resize, scope.delay ? scope.delay * 1 : 1000);
        return scope.$on('resize', resize);
      }
    };
  }).directive('fitInWin', function($timeout) {
    return function(scope, element) {
      var resize;
      resize = function() {
        if (scope.tick) {
          $timeout.cancel(scope.tick);
        }
        return scope.tick = $timeout(function() {
          var height, innerHeight;
          height = element[0].getBoundingClientRect().height;
          innerHeight = window.innerHeight || document.documentElement.clientHeight;
          if (height < innerHeight) {
            height = innerHeight + 'px';
            return element.css({
              height: height
            });
          }
        }, 1000);
      };
      resize();
      return scope.$on('resize', resize);
    };
  });

}).call(this);

//# sourceMappingURL=app.js.map
