'use strict'

define [
  './polygon'
 ], (Polygon) ->

  class Square extends Polygon
    constructor: ->
      super 4
