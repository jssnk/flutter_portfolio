class Project{
  final String? title, description, date, gitUrl;

  Project({this.title, this.description, this.date, this.gitUrl});
}

List<Project> my_projects = [
  Project(
      title: 'MungMung',
      description: '''반려견의 정보를 공유하고, 산책일기도 기록하며 다양한 반려견의 정보를 확인할 수 있는 웹사이트''',
      date: '2023.02.20 ~ 개발중',
      gitUrl: ''
  ),
  Project(
    title: 'NEXT-PAGE',
    description: '''로그인한 사용자를 대상으로 다양한 장르의 웹소설 컨텐츠를 제공하는 플랫폼 서비스입니다.
 유료 혹은 무료 에피소드를 제공하며 유료 에피소드는 인 앱 결제를 통해 충전한 포인트로 구매할 수 있습니다.
 가입한 회원이 만보를 달성했을 시에 당일 한정 1회 포인트 수령이 가능한 리워드 서비스를 구현했습니다.
''',
    date: '2022.11.28 ~ 2023.01.25',
    gitUrl: 'https://github.com/EDDI-RobotAcademy/next-page'
  ),
  Project(
    title: 'COOKING-RECIPE',
    description: '''이용자들이 직접만든 레시피를 공유할 수 있는 레시피 어플입니다. 
    음식명, 카테고리명으로 기반의 검색기능을 구현했습니다.''',
    date: '2022.10.26 ~ 2022.11.23',
      gitUrl: 'https://github.com/EDDI-RobotAcademy/WebAppPersonalProject/tree/main/p4th/JangsoonKim'

  )
];