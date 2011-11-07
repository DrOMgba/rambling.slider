(($) ->
  $.fn.reverse = [].reverse

  $.fn.shuffle = [].shuffle

  $.fn.as2dArray = (totalColumns) ->
    rowIndex = 0
    colIndex = 0
    array_2d = $ ''
    array_2d[rowIndex] = $ ''

    @each ->
      array_2d[rowIndex][colIndex] = $ @
      colIndex++
      if colIndex is totalColumns
        rowIndex++
        colIndex = 0
        array_2d[rowIndex] = $ ''

    array_2d
)(jQuery)