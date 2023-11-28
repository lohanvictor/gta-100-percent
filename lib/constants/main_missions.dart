class WalkthroughMission {
  final String name;
  final String videoLink;

  WalkthroughMission(this.name, this.videoLink);
}

class Mission {
  final String icon;
  final String title;
  final String key;
  final List<WalkthroughMission> walkthroughMissions;

  Mission(
      {required this.icon,
      required this.title,
      required this.key,
      required this.walkthroughMissions});
}

class MainMissions {
  final String section;
  final List<Mission> children;

  MainMissions({required this.section, required this.children});
}

final Map<String, Mission> losSantosMainMissions = {
  "RYDER": Mission(
    icon:
        "https://steamuserimages-a.akamaihd.net/ugc/1286291038381287953/285C260E06775FF0BF8FBA4C7C16BE5D9052F03F/",
    title: "Ryder",
    key: "RYDER",
    walkthroughMissions: [
      WalkthroughMission("Ryder",
          "https://www.youtube.com/watch?v=pQSabBbwLhM&list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3&index=2"),
      WalkthroughMission("Home Invasion",
          "https://www.youtube.com/watch?v=S2P4fv6LAUg&list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3&index=10"),
      WalkthroughMission("Catalyst",
          "https://www.youtube.com/watch?v=YzAjH1Bb-lk&list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3&index=11"),
      WalkthroughMission("Robbing Uncle Sam",
          "https://www.youtube.com/watch?v=BcM5cu-qKUA&list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3&index=12")
    ],
  ),
  "SWEET": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381288984/CADE38F8CC77806CB655F57A6C3A93DEBDB7A14D/",
      title: "Sweet",
      key: "SWEET",
      walkthroughMissions: [
        WalkthroughMission("Tagging Up Turf",
            "https://youtu.be/w_BetRqKzc8?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Cleaning the Hood",
            "https://youtu.be/FoJA10d7RA4?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Drive-Thru",
            "https://youtu.be/UMi4dRZdvso?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Nines and AK's",
            "https://youtu.be/QpfpX7PEf1k?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Drive-By",
            "https://youtu.be/4SgMAYF8f_g?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Sweet's Girl",
            "https://youtu.be/MFsBH1op6ws?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Cesar Vialpando",
            "https://youtu.be/obkCc6T-1qU?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Doberman",
            "https://youtu.be/mYs3xh5ffE8?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Los Sepulcros",
            "https://youtu.be/5j7jjHHm5fk?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Reuniting the Families",
            "https://youtu.be/cOz3y9nFtRA?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("The Green Sabre",
            "https://youtu.be/x0a_ZF0bLQc?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3")
      ]),
  "BIG_SMOKE": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381290951/96852FEB83EFFBEC133F0BE58466BFB84443C661/",
      title: "Big Smoke",
      key: "BIG_SMOKE",
      walkthroughMissions: [
        WalkthroughMission("OG Loc",
            "https://youtu.be/E0_kJw6WOUM?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Running Dog",
            "https://youtu.be/deYxyb1JKwk?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Wrong Side of the Tracks",
            "https://youtu.be/c6mQWvdhLFA?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Just Business",
            "https://youtu.be/qbVfXgls0yI?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3")
      ]),
  "CESAR_VIALPANDO": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381291540/FB6298F14F52B763EA1D0013E88AF959AE7ED858/",
      title: "Cesar Vialpando",
      key: "CESAR_VIALPANDO",
      walkthroughMissions: [
        WalkthroughMission("High Stakes, Low-Rider",
            "https://youtu.be/fI6LRnOdg0g?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3")
      ]),
  "OG_LOC": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381294669/56952E9447AE4D4B83E40FCA0D9E3E413D2653E7/",
      title: "Og Loc",
      key: "OG_LOC",
      walkthroughMissions: [
        WalkthroughMission("Life's a Beach",
            "https://youtu.be/kyaloGDnDq8?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Madd Dogg's Rhymes",
            "https://youtu.be/GAzzqylLr48?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Management Issues",
            "https://youtu.be/Nm7bzPs-jeY?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("House Party",
            "https://youtu.be/CyTVSOpuDVU?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3")
      ]),
  "CRASH": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381295465/F325D5DCA1D8BD422C660FDA5B00F871CD20F5F3/",
      title: "C.R.A.S.H",
      key: "CRASH",
      walkthroughMissions: [
        WalkthroughMission("Burning Desire",
            "https://youtu.be/CKPp_FbXVj0?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Gray Imports",
            "https://youtu.be/Jvr18whmGkk?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3")
      ]),
};

final Map<String, Mission> badLandsMainMissions = {
  "CESAR_VIALPANDO": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381291540/FB6298F14F52B763EA1D0013E88AF959AE7ED858/",
      title: "Cesar Vialpando",
      key: "CESAR_VIALPANDO",
      walkthroughMissions: [
        WalkthroughMission("King in Exile",
            "https://youtu.be/Y_H8ia_HbNg?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Wu Zi Mu",
            "https://youtu.be/qBIxlnV8KsE?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Farewell, My Love...",
            "https://youtu.be/W0jp2RDC6Xs?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
      ]),
  "CRASH": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381295465/F325D5DCA1D8BD422C660FDA5B00F871CD20F5F3/",
      title: "C.R.A.S.H",
      key: "CRASH",
      walkthroughMissions: [
        WalkthroughMission("Badlands", "https://youtu.be/qbkPiLaoMZo"),
      ]),
  "CATALINA": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381296615/24AFBF4F8190AFD404A51C5C681F04C03D1C87E3/",
      title: "Catalina",
      key: "CATALINA",
      walkthroughMissions: [
        WalkthroughMission("First Date", "https://youtu.be/h17jdOlfRWM"),
        WalkthroughMission("Tanker Commander", "https://youtu.be/h17jdOlfRWM"),
        WalkthroughMission("First Base",
            "https://youtu.be/Imht-ev_oOw?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Local Liquor Store",
            "https://youtu.be/Imht-ev_oOw?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Gone Courting",
            "https://youtu.be/Oi3Zkf9mbOY?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Against All Odds",
            "https://youtu.be/Oi3Zkf9mbOY?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Made in Heaven",
            "https://youtu.be/oAYxrA-SnK8?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Small Town Bank",
            "https://youtu.be/oAYxrA-SnK8?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
      ]),
  "TRUTH": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381297569/9864C9AA12B50567EF4B55508288D1E65F882600/",
      title: "Truth",
      key: "TRUTH",
      walkthroughMissions: [
        WalkthroughMission("Body Harvest",
            "https://youtu.be/Gwx0Q60mJbo?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Are You Going to San Fierro?",
            "https://youtu.be/QlgKZ1IWeEQ?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3")
      ])
};
final Map<String, Mission> mapMainMissions = {
  "RYDER": Mission(
    icon:
        "https://steamuserimages-a.akamaihd.net/ugc/1286291038381287953/285C260E06775FF0BF8FBA4C7C16BE5D9052F03F/",
    title: "Ryder",
    key: "RYDER",
    walkthroughMissions: [
      WalkthroughMission("Ryder",
          "https://www.youtube.com/watch?v=pQSabBbwLhM&list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3&index=2"),
      WalkthroughMission("Home Invasion",
          "https://www.youtube.com/watch?v=S2P4fv6LAUg&list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3&index=10"),
      WalkthroughMission("Catalyst",
          "https://www.youtube.com/watch?v=YzAjH1Bb-lk&list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3&index=11"),
      WalkthroughMission("Robbing Uncle Sam",
          "https://www.youtube.com/watch?v=BcM5cu-qKUA&list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3&index=12")
    ],
  ),
  "SWEET": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381288984/CADE38F8CC77806CB655F57A6C3A93DEBDB7A14D/",
      title: "Sweet",
      key: "SWEET",
      walkthroughMissions: [
        WalkthroughMission("Tagging Up Turf",
            "https://youtu.be/w_BetRqKzc8?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Cleaning the Hood",
            "https://youtu.be/FoJA10d7RA4?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Drive-Thru",
            "https://youtu.be/UMi4dRZdvso?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Nines and AK's",
            "https://youtu.be/QpfpX7PEf1k?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Drive-By",
            "https://youtu.be/4SgMAYF8f_g?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Sweet's Girl",
            "https://youtu.be/MFsBH1op6ws?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Cesar Vialpando",
            "https://youtu.be/obkCc6T-1qU?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Doberman",
            "https://youtu.be/mYs3xh5ffE8?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Los Sepulcros",
            "https://youtu.be/5j7jjHHm5fk?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Reuniting the Families",
            "https://youtu.be/cOz3y9nFtRA?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("The Green Sabre",
            "https://youtu.be/x0a_ZF0bLQc?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3")
      ]),
  "BIG_SMOKE": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381290951/96852FEB83EFFBEC133F0BE58466BFB84443C661/",
      title: "Big Smoke",
      key: "BIG_SMOKE",
      walkthroughMissions: [
        WalkthroughMission("OG Loc",
            "https://youtu.be/E0_kJw6WOUM?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Running Dog",
            "https://youtu.be/deYxyb1JKwk?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Wrong Side of the Tracks",
            "https://youtu.be/c6mQWvdhLFA?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Just Business",
            "https://youtu.be/qbVfXgls0yI?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3")
      ]),
  "CESAR_VIALPANDO": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381291540/FB6298F14F52B763EA1D0013E88AF959AE7ED858/",
      title: "Cesar Vialpando",
      key: "CESAR_VIALPANDO",
      walkthroughMissions: [
        WalkthroughMission("High Stakes, Low-Rider",
            "https://youtu.be/fI6LRnOdg0g?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3")
      ]),
  "OG_LOC": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381294669/56952E9447AE4D4B83E40FCA0D9E3E413D2653E7/",
      title: "Og Loc",
      key: "OG_LOC",
      walkthroughMissions: [
        WalkthroughMission("Life's a Beach",
            "https://youtu.be/kyaloGDnDq8?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Madd Dogg's Rhymes",
            "https://youtu.be/GAzzqylLr48?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("Management Issues",
            "https://youtu.be/Nm7bzPs-jeY?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3"),
        WalkthroughMission("House Party",
            "https://youtu.be/CyTVSOpuDVU?list=PLQ3KzJPBsAHlHyZWEwRJ4kFVulCW2HIV3")
      ]),
  "CRASH": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381295465/F325D5DCA1D8BD422C660FDA5B00F871CD20F5F3/",
      title: "C.R.A.S.H",
      key: "CRASH",
      walkthroughMissions: []),
  "CATALINA": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381296615/24AFBF4F8190AFD404A51C5C681F04C03D1C87E3/",
      title: "Catalina",
      key: "CATALINA",
      walkthroughMissions: []),
  "TRUTH": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381297569/9864C9AA12B50567EF4B55508288D1E65F882600/",
      title: "Truth",
      key: "TRUTH",
      walkthroughMissions: []),
  "CJ": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381303816/86BAD8896B4C8D4FAFAA86D79EAB9E98CAE0784D/",
      title: "CJ",
      key: "CJ",
      walkthroughMissions: []),
  "ZERO": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381304464/BC209A8998FEABF2932F912CC0EA3EFE9A549C0D/",
      title: "Zero",
      key: "ZERO",
      walkthroughMissions: []),
  "THE_TRIAD": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381306921/31C1315ED12AB47E8BA05AE2B6398ED4FE07A05A/",
      title: "The Triads",
      key: "THE_TRIAD",
      walkthroughMissions: []),
  "JIIZZY": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381309254/AA4DBB883283F9C5D05314E429EFE237CD27AD18/",
      title: "Jiizzy (Syndicate)",
      key: "JIIZZY",
      walkthroughMissions: []),
  "WU_ZI_MU": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381312873/2D6CC41418C29CA20F8A9538E72DA40F162FEEC2/",
      title: "Wu Zi Mu",
      key: "WU_ZI_MU",
      walkthroughMissions: []),
  "TORENO": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381318296/28CBA14AA6515B8B21C20C1DF6692F16250A8E55/",
      title: "Mike Toreno",
      key: "TORENO",
      walkthroughMissions: []),
  "HEIST": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381346054/A15F5126A1324D4AE964DC9108E67E6CDABAA3FB/",
      title: "Assalto",
      key: "HEIST",
      walkthroughMissions: []),
  "MAFIA": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381356457/D6E85CD86507ACC85CD24BD5617B8FD501E57267/",
      title: "Mafia",
      key: "MAFIA",
      walkthroughMissions: []),
  "DOGG": Mission(
      icon:
          "https://steamuserimages-a.akamaihd.net/ugc/1286291038381359521/BD2A8B9FE7B5E91243D22837B6AA192EC89D5BCD/",
      title: "Madd Dogg",
      key: "DOGG",
      walkthroughMissions: []),
};

final List<MainMissions> mainMissions = [
  MainMissions(section: "I - Los Santos", children: [
    losSantosMainMissions["RYDER"]!,
    losSantosMainMissions["SWEET"]!,
    losSantosMainMissions["BIG_SMOKE"]!,
    losSantosMainMissions["CESAR_VIALPANDO"]!,
    losSantosMainMissions["OG_LOC"]!,
    losSantosMainMissions["CRASH"]!,
  ]),
  MainMissions(section: "II - Badlands", children: [
    badLandsMainMissions["CRASH"]!,
    badLandsMainMissions["CATALINA"]!,
    badLandsMainMissions["TRUTH"]!,
    badLandsMainMissions["CESAR_VIALPANDO"]!,
  ]),
  MainMissions(section: "III - San Fierro", children: [
    mapMainMissions["CJ"]!,
    mapMainMissions["ZERO"]!,
    mapMainMissions["THE_TRIAD"]!,
    mapMainMissions["JIIZZY"]!,
    mapMainMissions["CRASH"]!,
    mapMainMissions["WU_ZI_MU"]!,
    mapMainMissions["CESAR_VIALPANDO"]!,
  ]),
  MainMissions(section: "IV - Desert", children: [
    mapMainMissions["TORENO"]!,
    mapMainMissions["TRUTH"]!,
  ]),
  MainMissions(section: "V - Las Aventuras", children: [
    mapMainMissions["THE_TRIAD"]!,
    mapMainMissions["HEIST"]!,
    mapMainMissions["TRUTH"]!,
    mapMainMissions["MAFIA"]!,
    mapMainMissions["CRASH"]!,
  ]),
  MainMissions(section: "VI - Retorno para Los Santos", children: [
    mapMainMissions["CJ"]!,
    mapMainMissions["SWEET"]!,
  ]),
];
