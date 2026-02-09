title = "Tim D'Annecy"

_init = function
    gui = create_gui{
        x = 0,
        y = 28,
        width = XX,
        height = 200 - 28,
    }

    content = gui:attach {
        x = 0,
        y = 0,
        width = XX,
        height = xx,

        draw = function(self)
            print( [[
                Hello! This is a mini-blog version of my website tdannecy.me built for Picotron.]], 10, 10, 1)
        end
        gui:attach_scrollbars()
    }

    function _update()
        local w, h = page_size()
        gui.width = w
        gui.height = h

        gui:update_all()
    end

    function _draw()
        gui:draw_all()
    end
