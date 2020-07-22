//
//  NBAPlayer.swift
//  200221_Hooper
//
//  Created by Demian on 2020/02/21.
//  Copyright © 2020 Demian. All rights reserved.
//

import Foundation


let playerDummyData = """
 {
   "api": {
          "players": [
                {
                "firstName": "Alex",
                "lastName": "Abrines",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "Spain",
                "playerId": "1",
                "dateOfBirth": "1993-08-01",
                "affiliation": "Spain/Spain",
                "startNba": "2016",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "8",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Quincy",
                "lastName": "Acy",
                "teamId": "28",
                "yearsPro": "6",
                "collegeName": "Baylor",
                "country": "USA",
                "playerId": "2",
                "dateOfBirth": "1990-10-06",
                "affiliation": "Baylor/USA",
                "startNba": "2012",
                "heightInMeters": "2.01",
                "weightInKilograms": "108.9",
                "leagues": {
                    "standard": {
                        "jersey": "4",
                        "active": "1",
                        "pos": "F"
                    }
                }
            },
            {
                "firstName": "Jordan",
                "lastName": "Adams",
                "teamId": "19",
                "yearsPro": "1",
                "collegeName": "UCLA",
                "country": "United States",
                "playerId": "3",
                "dateOfBirth": "1994-07-08",
                "affiliation": "",
                "startNba": "2014",
                "heightInMeters": "1.96",
                "weightInKilograms": "94.8",
                "leagues": {
                    "standard": {
                        "jersey": "3",
                        "active": "",
                        "pos": "G"
                    }
                }
            },
            {
                "firstName": "Steven",
                "lastName": "Adams",
                "teamId": "25",
                "yearsPro": "6",
                "collegeName": "Pittsburgh",
                "country": "New Zealand",
                "playerId": "4",
                "dateOfBirth": "1993-07-20",
                "affiliation": "Pittsburgh/New Zealand",
                "startNba": "2013",
                "heightInMeters": "2.11",
                "weightInKilograms": "120.2",
                "leagues": {
                    "standard": {
                        "jersey": "12",
                        "active": "1",
                        "pos": "C"
                    }
                }
            },
            {
                "firstName": "Arron",
                "lastName": "Afflalo",
                "teamId": "26",
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "5",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "4",
                        "active": "1",
                        "pos": "G"
                    }
                }
            },
            {
                "firstName": "Alexis",
                "lastName": "Ajinca",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "6",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "42",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Cole",
                "lastName": "Aldrich",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "7",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "45",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Lucas ",
                "lastName": "Batista",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2463",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "31",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "David",
                "lastName": "Jackson",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2464",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "32",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Guilherme",
                "lastName": "Braga",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2465",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "33",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Daulton",
                "lastName": "Hommes",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2466",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "34",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Obi",
                "lastName": "Kyei",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2467",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "1",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Kevin",
                "lastName": "White",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2468",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "3",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Alex",
                "lastName": "Mudronja",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2469",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "6",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Daniel",
                "lastName": "Dillon",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2470",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "12",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Jerome",
                "lastName": "Randall",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2471",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "25",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Eric",
                "lastName": "Griffin",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2472",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "17",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Dedric",
                "lastName": "Lawson",
                "teamId": "31",
                "yearsPro": "0",
                "collegeName": "Kansas",
                "country": "USA",
                "playerId": "2473",
                "dateOfBirth": "1997-10-01",
                "affiliation": "University of Kansas/USA",
                "startNba": "0",
                "heightInMeters": "2.03",
                "weightInKilograms": "105.7",
                "leagues": {
                    "standard": {
                        "jersey": "17",
                        "active": "1",
                        "pos": "F"
                    }
                }
            },
            {
                "firstName": "Matt",
                "lastName": "Mooney",
                "teamId": "7",
                "yearsPro": "0",
                "collegeName": "Texas Tech",
                "country": "USA",
                "playerId": "2474",
                "dateOfBirth": "1997-02-07",
                "affiliation": "Texas Tech/USA",
                "startNba": "2019",
                "heightInMeters": "1.88",
                "weightInKilograms": "90.3",
                "leagues": {
                    "standard": {
                        "jersey": "31",
                        "active": "1",
                        "pos": "G"
                    }
                }
            },
            {
                "firstName": "Gil",
                "lastName": "Amitay",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2475",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "10",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Eric",
                "lastName": "Anderson",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2476",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "12",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "David",
                "lastName": "Cohn",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2477",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "34",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Jonathan",
                "lastName": "Mor",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2478",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "4",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Scott",
                "lastName": "Suggs",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2479",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "3",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Gregory",
                "lastName": "Vargas",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2480",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "16",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Jon",
                "lastName": "Davis",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2481",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "17",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Marques",
                "lastName": "Bolden",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "Duke",
                "country": "USA",
                "playerId": "2482",
                "dateOfBirth": "1998-04-17",
                "affiliation": "Duke/USA",
                "startNba": "2019",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "5",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Donta",
                "lastName": "Hall",
                "teamId": "10",
                "yearsPro": "0",
                "collegeName": "Alabama",
                "country": "USA",
                "playerId": "2483",
                "dateOfBirth": "1997-08-07",
                "affiliation": "Alabama/USA",
                "startNba": "2019",
                "heightInMeters": "2.06",
                "weightInKilograms": "103.9",
                "leagues": {
                    "standard": {
                        "jersey": "42",
                        "active": "1",
                        "pos": "F"
                    }
                }
            },
            {
                "firstName": "Amir",
                "lastName": "Hinton",
                "teamId": "24",
                "yearsPro": "0",
                "collegeName": "Shaw University",
                "country": "USA",
                "playerId": "2484",
                "dateOfBirth": "1997-02-14",
                "affiliation": "Shaw University/USA",
                "startNba": "0",
                "heightInMeters": "1.96",
                "weightInKilograms": "86.2",
                "leagues": {
                    "standard": {
                        "jersey": "18",
                        "active": "1",
                        "pos": "G"
                    }
                }
            },
            {
                "firstName": "Louis",
                "lastName": "King",
                "teamId": "10",
                "yearsPro": "0",
                "collegeName": "Oregon",
                "country": "USA",
                "playerId": "2485",
                "dateOfBirth": "1999-04-06",
                "affiliation": "University of Oregon/USA",
                "startNba": "2019",
                "heightInMeters": "2.01",
                "weightInKilograms": "93.0",
                "leagues": {
                    "standard": {
                        "jersey": "14",
                        "active": "1",
                        "pos": "F"
                    }
                }
            },
            {
                "firstName": "Luke",
                "lastName": "Maye",
                "teamId": "21",
                "yearsPro": "0",
                "collegeName": "North Carolina",
                "country": "USA",
                "playerId": "2486",
                "dateOfBirth": "1997-03-07",
                "affiliation": "University of North Carolina at Cha/USA",
                "startNba": "0",
                "heightInMeters": "2.03",
                "weightInKilograms": "108.9",
                "leagues": {
                    "standard": {
                        "jersey": "31",
                        "active": "1",
                        "pos": "F"
                    }
                }
            },
            {
                "firstName": "Lamar",
                "lastName": "Peters",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2487",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "3",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Rayjon",
                "lastName": "Tucker",
                "teamId": "40",
                "yearsPro": "0",
                "collegeName": "Arkansas-Little Rock",
                "country": "USA",
                "playerId": "2488",
                "dateOfBirth": "1997-09-24",
                "affiliation": "Arkansas-Little Rock/USA",
                "startNba": "2019",
                "heightInMeters": "1.9",
                "weightInKilograms": "94.8",
                "leagues": {
                    "standard": {
                        "jersey": "6",
                        "active": "1",
                        "pos": "G"
                    }
                }
            },
            {
                "firstName": "Todd",
                "lastName": "Withers",
                "teamId": "10",
                "yearsPro": "0",
                "collegeName": "Queens University of Charlotte",
                "country": "USA",
                "playerId": "2489",
                "dateOfBirth": "1996-05-06",
                "affiliation": "Queens University/USA",
                "startNba": "0",
                "heightInMeters": "2.03",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "33",
                        "active": "1",
                        "pos": "F"
                    }
                }
            },
            {
                "firstName": "Kenny",
                "lastName": "Wooten",
                "teamId": "24",
                "yearsPro": "0",
                "collegeName": "Oregon",
                "country": "USA",
                "playerId": "2490",
                "dateOfBirth": "1998-04-17",
                "affiliation": "University of Oregon/USA",
                "startNba": "0",
                "heightInMeters": "2.03",
                "weightInKilograms": "106.6",
                "leagues": {
                    "standard": {
                        "jersey": "45",
                        "active": "1",
                        "pos": "F"
                    }
                }
            },
            {
                "firstName": "Nicolo",
                "lastName": "Melli",
                "teamId": "23",
                "yearsPro": "0",
                "collegeName": " ",
                "country": "Italy",
                "playerId": "2491",
                "dateOfBirth": "1991-01-26",
                "affiliation": "Fenerbahce (Turkey)/Italy",
                "startNba": "2019",
                "heightInMeters": "2.06",
                "weightInKilograms": "107.0",
                "leagues": {
                    "standard": {
                        "jersey": "20",
                        "active": "1",
                        "pos": "F"
                    }
                }
            },
            {
                "firstName": "Gustavo",
                "lastName": "Aguirre",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2492",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "7",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Esteban",
                "lastName": "Batista",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2493",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "15",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Christian",
                "lastName": "Bihurriet",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2494",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "33",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Agustin",
                "lastName": "Caffaro",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2495",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "1",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Maximo",
                "lastName": "Fjelurup",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2496",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "10",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Luciano",
                "lastName": "Gonzalez",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2497",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "8",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Marcus",
                "lastName": "Mata",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2498",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "6",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Facundo",
                "lastName": "Pinero",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2499",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "18",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Firmin",
                "lastName": "Thygesen",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2500",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "4",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Darquavis",
                "lastName": "Tucker",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2501",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "2",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Jose",
                "lastName": "Vildoza",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2502",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "11",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Justin",
                "lastName": "Wiliams",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2503",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "3",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Yudai",
                "lastName": "Baba",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2504",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "18",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Naz",
                "lastName": "Reid",
                "teamId": "22",
                "yearsPro": "0",
                "collegeName": "Louisiana State",
                "country": "USA",
                "playerId": "2505",
                "dateOfBirth": "1999-08-26",
                "affiliation": "Louisiana State University/USA",
                "startNba": "2019",
                "heightInMeters": "2.06",
                "weightInKilograms": "119.8",
                "leagues": {
                    "standard": {
                        "jersey": "11",
                        "active": "1",
                        "pos": "C-F"
                    }
                }
            },
            {
                "firstName": "Norense",
                "lastName": "Odiase",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2506",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "35",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "CJ",
                "lastName": "Harris",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2507",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "22",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Fengbo",
                "lastName": "Liu",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2508",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "39",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Finn",
                "lastName": "Delaney",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2509",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "3",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Robert",
                "lastName": "Loe",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2510",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "15",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "R.J.",
                "lastName": "Hampton",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2511",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "14",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Sek",
                "lastName": "Henry",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2512",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "22",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Ater",
                "lastName": "Majok",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2513",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "33",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Tom",
                "lastName": "Vodanovich",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2514",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "13",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Ethan",
                "lastName": "Rusbatch",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2515",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "25",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Mingyang",
                "lastName": "Sun",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2516",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "12",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Yuheng",
                "lastName": "Tian",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2517",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "9",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Tianyo",
                "lastName": "Yao",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2518",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "1",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Kavion",
                "lastName": "Pippen",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2519",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "31",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Workman",
                "lastName": "Willy",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2520",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "2",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Rush",
                "lastName": "Brandon",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2521",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "25",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Young",
                "lastName": "James",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2522",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "1",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Sorkin",
                "lastName": "Roman",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2523",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "9",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Koperberg",
                "lastName": "Daniel",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2524",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "8",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Cole",
                "lastName": "Norris",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2525",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "30",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Melo",
                "lastName": "Trimble",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2526",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "1",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Quincy",
                "lastName": "Miller",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2527",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "51",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Jo",
                "lastName": "Lual-Acuil Jr",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2528",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "0",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Ahmad",
                "lastName": "Caver",
                "teamId": "19",
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2529",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "",
                        "active": "1",
                        "pos": "G"
                    }
                }
            },
            {
                "firstName": "Tyus",
                "lastName": "Battle",
                "teamId": "22",
                "yearsPro": "0",
                "collegeName": "Syracuse",
                "country": "USA",
                "playerId": "2530",
                "dateOfBirth": "1997-09-23",
                "affiliation": "Syracuse University/USA",
                "startNba": "0",
                "heightInMeters": "1.98",
                "weightInKilograms": "93.0",
                "leagues": {
                    "standard": {
                        "jersey": "28",
                        "active": "1",
                        "pos": "G"
                    }
                }
            },
            {
                "firstName": "Barry",
                "lastName": "Brown",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2531",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "9",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Devin",
                "lastName": "Cannady",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2532",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "30",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "C.J.",
                "lastName": "Massinburg",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2533",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "15",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Bubu",
                "lastName": "Palo",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2534",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "19",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Bubu",
                "lastName": "Palo",
                "teamId": "20",
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2535",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "19",
                        "active": "1",
                        "pos": "G"
                    }
                }
            },
            {
                "firstName": "Skyler",
                "lastName": "Flatten",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2536",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "18",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Gunther",
                "lastName": "Behnke",
                "teamId": "22",
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2537",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "",
                        "active": "1",
                        "pos": "C"
                    }
                }
            },
            {
                "firstName": "Armoni",
                "lastName": "Brooks",
                "teamId": "1",
                "yearsPro": "0",
                "collegeName": "Houston",
                "country": "USA",
                "playerId": "2538",
                "dateOfBirth": "1998-06-05",
                "affiliation": " USA/USA",
                "startNba": "0",
                "heightInMeters": "1.9",
                "weightInKilograms": "88.5",
                "leagues": {
                    "standard": {
                        "jersey": "",
                        "active": "1",
                        "pos": "G"
                    }
                }
            },
            {
                "firstName": "Nando",
                "lastName": "De Colo",
                "teamId": "38",
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2539",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "3",
                        "active": "1",
                        "pos": "G"
                    }
                }
            },
            {
                "firstName": "V.J.",
                "lastName": "King",
                "teamId": "24",
                "yearsPro": "0",
                "collegeName": "Louisville",
                "country": "USA",
                "playerId": "2540",
                "dateOfBirth": "1997-01-22",
                "affiliation": "University of Louisville/USA",
                "startNba": "0",
                "heightInMeters": "1.98",
                "weightInKilograms": "86.2",
                "leagues": {
                    "standard": {
                        "jersey": "",
                        "active": "1",
                        "pos": "F"
                    }
                }
            },
            {
                "firstName": "Anzejs",
                "lastName": "Pasecniks",
                "teamId": "41",
                "yearsPro": "0",
                "collegeName": " ",
                "country": "Latvia",
                "playerId": "2541",
                "dateOfBirth": "1995-12-20",
                "affiliation": "Gran Canaria (Spain)/Latvia",
                "startNba": "2019",
                "heightInMeters": "2.18",
                "weightInKilograms": "103.9",
                "leagues": {
                    "standard": {
                        "jersey": "18",
                        "active": "1",
                        "pos": "C-F"
                    }
                }
            },
            {
                "firstName": "Zak",
                "lastName": "Irvin",
                "teamId": "24",
                "yearsPro": "0",
                "collegeName": "Michigan",
                "country": "USA",
                "playerId": "2542",
                "dateOfBirth": "1994-09-05",
                "affiliation": " USA/USA",
                "startNba": "0",
                "heightInMeters": "1.98",
                "weightInKilograms": "97.5",
                "leagues": {
                    "standard": {
                        "jersey": "",
                        "active": "1",
                        "pos": "G"
                    }
                }
            },
            {
                "firstName": "Matt",
                "lastName": "Morgan",
                "teamId": "38",
                "yearsPro": "0",
                "collegeName": "Cornell",
                "country": "USA",
                "playerId": "2543",
                "dateOfBirth": "1997-11-07",
                "affiliation": "Cornell/USA",
                "startNba": "0",
                "heightInMeters": "1.88",
                "weightInKilograms": "78.9",
                "leagues": {
                    "standard": {
                        "jersey": "",
                        "active": "1",
                        "pos": "G"
                    }
                }
            },
            {
                "firstName": "Marcus",
                "lastName": "Allen",
                "teamId": "17",
                "yearsPro": "0",
                "collegeName": "Stanford",
                "country": "USA",
                "playerId": "2544",
                "dateOfBirth": "1994-09-14",
                "affiliation": " USA/USA",
                "startNba": "0",
                "heightInMeters": "1.88",
                "weightInKilograms": "87.1",
                "leagues": {
                    "standard": {
                        "jersey": "28",
                        "active": "1",
                        "pos": "G"
                    }
                }
            },
            {
                "firstName": "Chad",
                "lastName": "Brown",
                "teamId": "8",
                "yearsPro": "0",
                "collegeName": "Central Florida",
                "country": "",
                "playerId": "2545",
                "dateOfBirth": "1996-09-06",
                "affiliation": "Central Florida",
                "startNba": "0",
                "heightInMeters": "2.06",
                "weightInKilograms": "111.1",
                "leagues": {
                    "standard": {
                        "jersey": "",
                        "active": "1",
                        "pos": "F"
                    }
                }
            },
            {
                "firstName": "Matur",
                "lastName": "Maker",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2546",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "5",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "MIke",
                "lastName": "Scott",
                "teamId": "40",
                "yearsPro": "0",
                "collegeName": "Idaho",
                "country": "USA",
                "playerId": "2547",
                "dateOfBirth": "1993-08-10",
                "affiliation": "Idaho/USA",
                "startNba": "0",
                "heightInMeters": "1.83",
                "weightInKilograms": "81.6",
                "leagues": {
                    "standard": {
                        "jersey": "",
                        "active": "1",
                        "pos": "G"
                    }
                }
            },
            {
                "firstName": "Craig",
                "lastName": "Sword",
                "teamId": "10",
                "yearsPro": "0",
                "collegeName": "Mississippi State",
                "country": "USA",
                "playerId": "2548",
                "dateOfBirth": "1994-01-16",
                "affiliation": "Mississippi State/USA",
                "startNba": "0",
                "heightInMeters": "1.9",
                "weightInKilograms": "88.9",
                "leagues": {
                    "standard": {
                        "jersey": "",
                        "active": "1",
                        "pos": "G"
                    }
                }
            },
            {
                "firstName": "B.J.",
                "lastName": "Taylor",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2549",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "31",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Bennie",
                "lastName": "Boatwright",
                "teamId": "19",
                "yearsPro": "0",
                "collegeName": "USC",
                "country": "USA",
                "playerId": "2550",
                "dateOfBirth": "1996-07-13",
                "affiliation": "University of Southern California/USA",
                "startNba": "0",
                "heightInMeters": "2.08",
                "weightInKilograms": "106.6",
                "leagues": {
                    "standard": {
                        "jersey": "22",
                        "active": "1",
                        "pos": "F"
                    }
                }
            },
            {
                "firstName": "Kevin",
                "lastName": "Hervey",
                "teamId": "25",
                "yearsPro": "0",
                "collegeName": "Texas-Arlington",
                "country": "USA",
                "playerId": "2551",
                "dateOfBirth": "1996-07-09",
                "affiliation": "Texas-Arlington/USA",
                "startNba": "2019",
                "heightInMeters": "2.06",
                "weightInKilograms": "104.3",
                "leagues": {
                    "standard": {
                        "jersey": "15",
                        "active": "1",
                        "pos": "F"
                    }
                }
            },
            {
                "firstName": "Paul",
                "lastName": "Watson",
                "teamId": "38",
                "yearsPro": "0",
                "collegeName": "Fresno State",
                "country": "USA",
                "playerId": "2552",
                "dateOfBirth": "1994-12-30",
                "affiliation": "Fresno State/USA",
                "startNba": "2019",
                "heightInMeters": "1.98",
                "weightInKilograms": "95.3",
                "leagues": {
                    "standard": {
                        "jersey": "1",
                        "active": "1",
                        "pos": "G"
                    }
                }
            },
            {
                "firstName": "Eric",
                "lastName": "Mika",
                "teamId": "30",
                "yearsPro": "0",
                "collegeName": "Brigham Young",
                "country": "USA",
                "playerId": "2553",
                "dateOfBirth": "1995-01-05",
                "affiliation": "Brigham Young/USA",
                "startNba": "2019",
                "heightInMeters": "2.08",
                "weightInKilograms": "105.7",
                "leagues": {
                    "standard": {
                        "jersey": "",
                        "active": "1",
                        "pos": "C-F"
                    }
                }
            },
            {
                "firstName": "Jeremy",
                "lastName": "Pargo",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "Gonzaga",
                "country": "USA",
                "playerId": "2554",
                "dateOfBirth": "1986-03-17",
                "affiliation": "Gonzaga/USA",
                "startNba": "2011",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "20",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "J.P.",
                "lastName": "Macura",
                "teamId": null,
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2555",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "42",
                        "active": "0",
                        "pos": ""
                    }
                }
            },
            {
                "firstName": "Sir'Dominic",
                "lastName": "Pointer",
                "teamId": "7",
                "yearsPro": "0",
                "collegeName": "St. John's, N.Y.",
                "country": "USA",
                "playerId": "2556",
                "dateOfBirth": "1992-05-06",
                "affiliation": "St. John's (N.Y.)/USA",
                "startNba": "0",
                "heightInMeters": "1.98",
                "weightInKilograms": "87.1",
                "leagues": {
                    "standard": {
                        "jersey": "",
                        "active": "1",
                        "pos": "G-F"
                    }
                }
            },
            {
                "firstName": "Jontay",
                "lastName": "Porter",
                "teamId": "19",
                "yearsPro": "0",
                "collegeName": "",
                "country": "",
                "playerId": "2557",
                "dateOfBirth": "",
                "affiliation": "",
                "startNba": "0",
                "heightInMeters": "",
                "weightInKilograms": "",
                "leagues": {
                    "standard": {
                        "jersey": "",
                        "active": "1",
                        "pos": "C-F"
                    }
                }
            }
        ]
    }
}
""".data(using: .utf8)!


struct API_player: Decodable {
  let api: Player
}

struct Player: Decodable {
  let players: [Players]
}

struct Players: Decodable {
  let fullName: String
  let teamId: String?
  let yearsPro: String?
  let collegeName: String?
  let country: String?
  let dateOfBirth: String?
//  let dateOfBirth: Date
  let affiliation: String?
  let startNba: String?
  let heightInMeters: String?
  let weightInKilograms: String?
  let jersey: String?
  let pos: String?
  
  
  private enum CodingKeys: String, CodingKey {
    case firstName, lastName, teamId, yearsPro, collegeName, country, affiliation, startNba, heightInMeters, weightInKilograms, dateOfBirth, leagues
  }
  
  private enum LeaguesKey: String, CodingKey {
    case standard
  }
  private enum StandardKeys: String, CodingKey {
    case jersey, pos
  }
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    let firstName = try container.decode(String.self, forKey: .firstName)
    let lastName = try container.decode(String.self, forKey: .lastName)
    self.fullName = firstName + " " + lastName
    
    self.teamId = try container.decode(String?.self, forKey: .teamId)
    self.yearsPro = try container.decode(String?.self, forKey: .yearsPro)
    self.collegeName = try container.decode(String?.self, forKey: .collegeName)
    self.affiliation = try container.decode(String?.self, forKey: .affiliation)
    self.startNba = try container.decode(String?.self, forKey: .startNba)
    self.heightInMeters = try container.decode(String?.self, forKey: .heightInMeters)
    self.weightInKilograms = try container.decode(String?.self, forKey: .weightInKilograms)
    self.dateOfBirth = try container.decode(String?.self, forKey: .dateOfBirth)
    self.country = try container.decode(String?.self, forKey: .country)
    
    
    let leaguesContainer = try container.nestedContainer(
      keyedBy: LeaguesKey.self,
      forKey: .leagues)
    
    let standardContainer = try leaguesContainer.nestedContainer(
      keyedBy: StandardKeys.self,
      forKey: .standard)
    
    self.jersey = try standardContainer.decode(String?.self, forKey: .jersey)
    self.pos = try standardContainer.decode(String?.self, forKey: .pos)
    
  }
}

//func testPlayer(){
//  do
//    {
//      let temp = try JSONDecoder().decode(Players.self, from: playerData)
//    print(temp)
//  
//    } catch {
//      print(error)
//    }
//}
