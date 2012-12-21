# IIS Express Here

## Wha?

Get an IIS Express process running in the current or selected directory, and open a browser to that site. This is mainly useful when you're playing with frontend stuff and want to browse a site in a directory. It's necessary to run most sites off a server rather than `file://` urls, since you don't need to specify a directory specific `<base>` tag in your pages.

## Install
- Save `serve.bat` somewhere.
- Update `serve.reg`, changing the paths in the command keys to the location where you saved `serve.bat`
- Apply `serve.reg` to your registry. 

## Use

Right click on either a folder or directory background and select "IIS Express Here"

You'll end up with a nifty cmd window with request logging, and your browser will open to the site you just started serving. Press 'Q' to stop IIS Express when you're finished.

## Notes

1. You'll need to have [IIS Express](http://www.iis.net/learn/extensions/introduction-to-iis-express/iis-express-overview) installed. 
2. IIS Express will return nothing but 500 errors if you try to browse a folder without an index.html file in it, rather than 403s or whatever.

## Future

1. Colored log output?
2. IIS Express can host Node.JS apps - could we get that working?
3. You should be able to get things like Cassette to work to compile assests via a custom [applcationhost.config](http://www.iis.net/learn/get-started/planning-your-iis-architecture/introduction-to-applicationhostconfig) in the directory that's being served.
