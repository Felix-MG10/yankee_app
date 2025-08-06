// lib/features/dashboard/presentation/screens/dashboard_screen.dart
class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tableau de bord')),
      body: Column(
        children: [
          BlocBuilder<ProfileBloc, ProfileState>(
            builder: (context, state) {
              if (state is ProfileLoaded) {
                return UserInfoCard(user: state.user);
              }
              return CircularProgressIndicator();
            },
          ),
          // Autres widgets du dashboard
        ],
      ),
      bottomNavigationBar: const YankeeBottomNavBar(),
    );
  }
}