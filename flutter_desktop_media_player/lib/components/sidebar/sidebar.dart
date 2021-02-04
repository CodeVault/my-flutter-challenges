import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_desktop_media_player/components/image_preview.dart';
import 'package:flutter_desktop_media_player/components/playlist/widget.dart';
import 'package:flutter_desktop_media_player/components/sidebar/sidebar_cover.dart';
import 'package:flutter_desktop_media_player/components/sidebar/sidebar_tile.dart';
import 'package:line_icons/line_icons.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 280,
            child: Stack(
              fit: StackFit.expand,
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  height: 300,
                  padding: EdgeInsets.all(15),
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      SidebarTile(
                        icon: LineIcons.home,
                        title: 'Home',
                      ),
                      SidebarTile(
                        icon: LineIcons.inbox,
                        title: 'Browse',
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SidebarTile(
                        title: 'Library',
                      ),
                      SidebarTile(
                        title: 'Playlists',
                        isReadOnly: true,
                      ),
                      Column(
                        children: <Widget>[
                          SidebarTile(
                            title: 'Kuduro!!! 🔥',
                            isActive: true,
                          ),
                          SidebarTile(
                            title: 'Afro House 🦄',
                            isActive: true,
                          ),
                          SidebarTile(
                            title: 'Kizomba',
                            isActive: true,
                          ),
                          SidebarTile(
                            title: 'Most played',
                            isActive: true,
                          ),
                          SidebarTile(
                            title: 'Recently played',
                            isActive: true,
                          ),
                          SidebarTile(
                            title: 'Archive',
                            isActive: true,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -80,
                  left: 0,
                  right: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ImagePreview(
                                    image: 'assets/babulla-cover.jpg',
                                    tag: 'current-cover');
                              },
                            ),
                          );
                        },
                        child: Hero(
                          tag: 'current-cover',
                          child: SidebarCover(
                            image: 'assets/babulla-cover.jpg',
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 15,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Babulla (Original Mix)',
                              style: TextStyle(
                                color: Color(0xFFC4C1C2),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Wilson Kentura, Tiuze Money, Mil Tokes Portuga',
                              style: TextStyle(
                                color: Color(0xFF4E586B),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Playlist(),
          )
        ],
      ),
    );
  }
}
