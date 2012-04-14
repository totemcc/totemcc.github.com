class Transform
  constructor: (@a) ->
  
  p: (p) ->
    # apply the transform to a point
    # the same thing as mult, where the point is a column vector
    [
      @a[0]*p[0] + @a[2]*p[1] + @a[4],
      @a[1]*p[0] + @a[3]*p[1] + @a[5]
    ]
  scaleRange: () ->
    a = @a[0]*@a[0] + @a[1]*@a[1]
    b = @a[2]*@a[2] + @a[3]*@a[3]
    return [Math.min(a, b), Math.max(a, b)]
  area: () ->
    # trying this out to make sure things don't get scaled too small
    # using formula via http://en.wikipedia.org/wiki/Quadrilateral#Using_vectors
    diag1 = numeric['-'](@p([1, 0]), @p([-1, 0]))
    diag2 = numeric['-'](@p([0, 1]), @p([0, -1]))
    Math.abs(diag1[0]*diag2[1] - diag2[0]*diag1[1])
  mult: (transform) ->
    x = @a
    y = transform.a
    makeTransform [
      x[0]*y[0]+x[2]*y[1],
      x[1]*y[0]+x[3]*y[1],
      x[0]*y[2]+x[2]*y[3],
      x[1]*y[2]+x[3]*y[3],
      x[0]*y[4]+x[2]*y[5]+x[4],
      x[1]*y[4]+x[3]*y[5]+x[5]
    ]
  inverse: () ->
    if @_memoInverse then return @_memoInverse
    [a,b,c,d,e,f] = @a
    x = a * d - b * c;
    @_memoInverse = makeTransform [
      d / x,
      -b / x,
      -c / x,
      a / x,
      (c * f - d * e) / x,
      (b * e - a * f) / x
    ]
  set: (ctx) ->
    ctx.setTransform(@a...)
  app: (ctx) ->
    ctx.transform(@a...)


makeTransform = (matrix=[1,0,0,1,0,0]) ->
  new Transform(matrix)







# makeTransform = (matrix=[1,0,0,1,0,0]) ->
#   o = {}
#   o.a = matrix
#   o.p = (point) ->
#     # apply the transform to a point
#     # the same thing as mult, where the point is a column vector
#     m = matrix
#     p = point
#     [
#       m[0]*p[0] + m[2]*p[1] + m[4],
#       m[1]*p[0] + m[3]*p[1] + m[5]
#     ]
#   o.scale = () ->
#     # get the scale factor by transforming [1, 1] and comparing it to [0, 0]
#     x = o.a[0] + o.a[2]
#     y = o.a[1] + o.a[3]
#     numeric.dot([x,y], [x,y])
#     # o.a[0]*o.a[0] + o.a[1]*o.a[1]
#   o.scaleRange = () ->
#     a = o.a[0]*o.a[0] + o.a[1]*o.a[1]
#     b = o.a[2]*o.a[2] + o.a[3]*o.a[3]
#     return [Math.min(a, b), Math.max(a, b)]
#   o.mult = (transform) ->
#     x = matrix
#     y = transform.a
#     makeTransform [
#       x[0]*y[0]+x[2]*y[1],
#       x[1]*y[0]+x[3]*y[1],
#       x[0]*y[2]+x[2]*y[3],
#       x[1]*y[2]+x[3]*y[3],
#       x[0]*y[4]+x[2]*y[5]+x[4],
#       x[1]*y[4]+x[3]*y[5]+x[5]
#     ]
#   memoInverse = false
#   o.inverse = () ->
#     return memoInverse if memoInverse
#     [a,b,c,d,e,f] = matrix
#     x = a * d - b * c;
#     memoInverse = makeTransform [
#       d / x,
#       -b / x,
#       -c / x,
#       a / x,
#       (c * f - d * e) / x,
#       (b * e - a * f) / x
#     ]
#   o.set = (ctx) ->
#     ctx.setTransform(matrix...)
#   o.app = (ctx) ->
#     ctx.transform(matrix...)
#   return o



makeComponent = (definition, transform) ->
  o = {
    id: _.uniqueId("component")
    definition: definition
    transform: transform
  }




makeDefinition = () ->
  o = {
    view: makeTransform([0.4,0,0,0.4,0,0])
  }
  o.renderer = require("makeRenderer")(o)
  return o


# a definition either has a draw function or is a list of transform/definition pairs

makePrimitiveDefinition = (draw) ->
  o = makeDefinition()
  # draw function takes a ctx and makes a path
  o.draw = draw
  return o

makeCompoundDefinition = () ->
  o = makeDefinition()
  o.components = []
  o.add = (definition, transform) ->
    c = {
      transform: transform
      definition: definition
    }
    o.components.push(c)
    return c
  return o



combineComponents = (componentPath) ->
  combined = componentPath.reduce((transform, component) ->
    transform.mult(component.transform)
  , makeTransform())


module.exports = {
  makeTransform: makeTransform
  makeComponent: makeComponent
  makePrimitiveDefinition: makePrimitiveDefinition
  makeCompoundDefinition: makeCompoundDefinition
  
  combineComponents: combineComponents
}