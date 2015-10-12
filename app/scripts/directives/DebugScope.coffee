angular.module('PaktorApp')
.directive 'debugScope', ($log)->
  (scope, element)->
    printScopeValue = (scope)->
      gap = []
      {$parent} = scope
      while $parent
        {$parent} = $parent
        gap.push '#'
      gap = gap.join ''
      gap += '---------------'
      $log.debug gap, '$id:', scope.$id
      for p,v of scope
        if scope.hasOwnProperty(p) and p.indexOf('$') is -1 and p != 'this' and p != 'constructor'
          if !(v instanceof Function)
            $log.debug p, ':', v
          else
            $log.debug p, ': function'
    printScopeTree = (scope)->
      printScopeValue scope
      {$$childHead} = scope
      scopes = []
      if $$childHead
        scopes.push $$childHead
        {$$nextSibling} = $$childHead
        while $$nextSibling
          scopes.push $$nextSibling
          {$$nextSibling} = $$nextSibling
      for s in scopes
        printScopeTree s
    element.on 'dblclick', ->
      printScopeTree scope