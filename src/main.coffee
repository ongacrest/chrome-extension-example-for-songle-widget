###
  @author Takahiro INOUE <takahiro.inoue@aist.go.jp>
  @license Chrome Extension Example for Songle Widget

  Visit "http://songle.jp/info/Credit.html" and "http://widget.songle.jp/docs/v1" for documentation.
  Copyright (c) 2015 National Institute of Advanced Industrial Science and Technology (AIST)

  Distributed under the terms of the MIT license only for non-commercial purposes.
  "http://www.opensource.org/licenses/mit-license.html"

  This notice shall be included in all copies or substantial portions of this Songle Widget API.
  If you are interested in commercial use of Songle Widget API, please contact "songle-ml@aist.go.jp".
###
addEventListener "load",
  ->
    SongleWidgetAPI.embedSongleWidget
      snapMode: "bottom-right"
      snapMarginX: 5
      snapMarginY: 5
      useSongSearchUI: true

      # NOTE: You can use SongleWidgetAPI.createSongleWidgetElement options.
      api: "chrome-extension-example-for-songle-widget"
      url: "http://www.youtube.com/watch?v=PqJNc9KVIZE"
      onReady:
        (songleWidget) ->
          songleWidget.on "beatPlay",
            (e) ->
              if e.beat.position % 2 == 0
                $("img")
                  .css
                    transform: "rotate(+10deg)"
              else
                $("img")
                  .css
                    transform: "rotate(-10deg)"
, false
