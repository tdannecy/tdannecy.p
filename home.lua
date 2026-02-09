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

I will be updating this site 
with new apps and games as I 
cook them up.

If you have any questions, 
send me an email at
tdannecy@gmail.com

--------------------------

Current projects:
        ]], gui.width/2 - (30 * 2.5) , 10, 1)
        end
    }

    local buttons_top_y = 150
	content:attach_button{x = 10, y = buttons_top_y, label = "Wiki",
		tap = function()
			download(fetch_web_only("bbs://wiki-12.p64"),"Wiki.p64")
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
    cls(7)
    gui:draw_all()
end
