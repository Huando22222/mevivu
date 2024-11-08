import 'package:flutter/material.dart';
import 'package:mevivu/home_screen.dart';
import 'package:mevivu/list_blog.dart';
import 'package:mevivu/state/selected_item_sidebar_provider.dart';
import 'package:provider/provider.dart';

class NavigationDrawerCustom extends StatelessWidget {
  const NavigationDrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    var selectedItemSidebarProvider =
        Provider.of<SelectedItemSidebarProvider>(context);
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF0a8ed9),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              runSpacing: 16,
              children: [
                buildItem(
                  context,
                  title: "Home",
                  icon: Icons.home_outlined,
                  isSelected:
                      selectedItemSidebarProvider.selectedItem == "Home",
                  onTap: () {
                    selectedItemSidebarProvider.selectItem("Home");
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                ),
                buildItem(
                  context,
                  title: "Profile",
                  icon: Icons.person_outlined,
                  isSelected:
                      selectedItemSidebarProvider.selectedItem == "Profile",
                  onTap: () {
                    selectedItemSidebarProvider.selectItem("Profile");
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                ),
                buildItem(
                  context,
                  title: "Nearby",
                  icon: Icons.location_on_outlined,
                  isSelected:
                      selectedItemSidebarProvider.selectedItem == "Nearby",
                  onTap: () {
                    selectedItemSidebarProvider.selectItem("Nearby");
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                ),
                const Divider(),
                buildItem(
                  context,
                  title: "Bookmark",
                  icon: Icons.bookmark_outlined,
                  isSelected:
                      selectedItemSidebarProvider.selectedItem == "Bookmark",
                  onTap: () {
                    selectedItemSidebarProvider.selectItem("Bookmark");
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                ),
                buildItem(
                  context,
                  title: "Notification",
                  icon: Icons.notifications_outlined,
                  isSelected: selectedItemSidebarProvider.selectedItem ==
                      "Notification",
                  hasNotification: true,
                  onTap: () {
                    selectedItemSidebarProvider.selectItem("Notification");
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                ),
                buildItem(
                  context,
                  title: "Message",
                  icon: Icons.message_outlined,
                  hasNotification: true,
                  isSelected:
                      selectedItemSidebarProvider.selectedItem == "Message",
                  onTap: () {
                    selectedItemSidebarProvider.selectItem("Message");
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                ),
                const Divider(),
                buildItem(
                  context,
                  title: "Setting",
                  icon: Icons.settings_outlined,
                  isSelected:
                      selectedItemSidebarProvider.selectedItem == "Setting",
                  onTap: () {
                    selectedItemSidebarProvider.selectItem("Setting");
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                ),
                buildItem(
                  context,
                  title: "Help",
                  icon: Icons.help_outline,
                  isSelected:
                      selectedItemSidebarProvider.selectedItem == "Help",
                  onTap: () {
                    selectedItemSidebarProvider.selectItem("Help");
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                ),
                buildItem(
                  context,
                  title: "Logout",
                  icon: Icons.logout_outlined,
                  isSelected:
                      selectedItemSidebarProvider.selectedItem == "Logout",
                  onTap: () {
                    selectedItemSidebarProvider.selectItem("Logout");
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                ),
                buildItem(
                  context,
                  title: "REST API",
                  icon: Icons.network_wifi_3_bar_rounded,
                  isSelected:
                      selectedItemSidebarProvider.selectedItem == "RESTAPI",
                  onTap: () {
                    selectedItemSidebarProvider.selectItem("RESTAPI");
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const ListBlog()),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget buildItem(BuildContext context,
      {required String title,
      required IconData icon,
      required bool isSelected,
      bool hasNotification = false,
      required VoidCallback onTap}) {
    return Container(
      decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            topRight: Radius.circular(25),
          )),
      child: ListTile(
        leading: Stack(
          clipBehavior: Clip.none,
          children: [
            Icon(icon, color: isSelected ? Colors.blue : Colors.white),
            if (hasNotification)
              Positioned(
                right: 0,
                top: -4,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
          ],
        ),
        title: Text(
          title,
          style: TextStyle(color: isSelected ? Colors.blue : Colors.white),
        ),
        // selected: isSelected,
        onTap: onTap,
      ),
    );
  }
}
