'use strict'

define [], ->

  d = document
  $ = (el) -> d.querySelector el

  body = $ 'body'

  class Polygon
    constructor: (@n = 0) ->
      @canvas = d.createElement 'canvas'

      fragment = d.createDocumentFragment()
      fragment.appendChild @canvas
      body.appendChild fragment

      @ctx = @canvas.getContext '2d'
      @ctx.canvas.width = 300
      @ctx.canvas.height = 300

      if @n > 2
        @sides @n

    sides: (n) ->
      if n < 3
        return

      radius = 100
      x = 150
      y = 150
      a = (Math.PI * 2) / n

      @ctx.beginPath()
      @ctx.translate x, y
      @ctx.moveTo radius, 0
      for i in [1..n]
        @ctx.lineTo radius * Math.cos(a * i), radius * Math.sin(a * i)

      @ctx.closePath()
      @ctx.fillStyle = '#FFCC00'
      @ctx.fill()
      @ctx.stroke()

      return
