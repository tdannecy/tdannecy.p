title = "Tim D'Annecy"

_init = function()
    gui = create_gui{
        x = 0,
        y = 28,
        width = 200,
        height = 200 - 28,
    }

    content = gui:attach {
        x = 0,
        y = 0,
        width = 300,
        height = 250,

        draw = function(self)
            print( [[
Hello! This is a version of my 
blog tdannecy.me built for 
Picotron.
        ]], 10, 10)
        end
    }

    local buttons_top_y = 150
	content:attach_button{x = 10, y = buttons_top_y, label = "Test",
		tap = function()
			download(fetch_web_only("https://raw.githubusercontent.com/May0san/piconetdemo/refs/heads/main/3dGraphics.p64"),"Test.p64")
		end
	}

    gui:attach_scrollbars()
end

function _update()
    local w, h = page_size()
    gui.width = w
    gui.height = h

    gui:update_all()
end

function _draw()
    cls()
    gui:draw_all()
end
