#!/bin/sh

anonsurf_status () {
    /usr/bin/ps aux | grep '/usr/bin/tor' | /usr/bin/wc -l
}

anonsurf_print () {
    if [ "$(anonsurf_status)" = 2 ]; then
        echo "%{F#ffffff}%{u#00cc00}  ﴣ  %{u-}%{F-}"
    else
        echo "%{F#ffffff}%{u#ff704d}  ﴣ  %{u-}%{F-}"
    fi
}

anonsurf_watch () {
    anonsurf_print

}

anonsurf_toggle () {
    if [ "$(anonsurf_status)" = 2 ]; then
      /usr/bin/anonsurf stop
    else
      /usr/bin/anonsurf start
    fi
}

case "$1" in
    --toggle)
        anonsurf_toggle
        ;;
    *)
        anonsurf_watch
        ;;
esac
