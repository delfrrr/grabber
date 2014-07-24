cleanPreview = (browser, cb) ->
  expression = "$('button.remove-bar').click(); "+
               "$('html,body').css('overflow', 'hidden')"
  browser.safeExecute expression, cb

getOptions = ->
  # thing.io options for testing https://thing.(io|dev)/$$$/pages/view/$$$
  opts =
    width: 1136
    height: 852
    resize: 568
    condition: "$('body.ready').length == 1" # my body is ready
    cleanup: cleanPreview
  opts

module.exports =
  cleanPreview: cleanPreview
  getOptions: getOptions
