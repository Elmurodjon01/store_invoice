import 'dart:ui';

import 'package:google_maps_flutter/google_maps_flutter.dart';

const sheetID = '1VpiE0TEexUA6SPAIh7T3wdV7GV3LGHjT80-C0Wd2tQk';
const gsheetsUrl =
    'https://docs.google.com/spreadsheets/d/1VpiE0TEexUA6SPAIh7T3wdV7GV3LGHjT80-C0Wd2tQk/edit?usp=sharing';

const LatLng currentLocation = LatLng(37.449393, 126.653397);
const LatLng home = LatLng(37.448687, 126.683880,);
const double camera_zoom = 16;
const double camera_tilt = 80;
const double camera_bearing = 30;
const Color mainColor = Color(0xFF03032b);
const credentials = r'''
{
  "type": "service_account",
  "project_id": "storeinvoice-386817",
  "private_key_id": "0dc56f7b73514a7e70ff1645df5e4f24fd1b69a6",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCjGHzk7PlpLBfV\ngtjKBiE7csMepGSCkfsRd5jqZWzTPjgoOkFt7DtYDqqi9T15ZEYN1jGSHGcLsR2D\n0BQQMkkAY90knX60a0jBr39EKdHbop/InRuFGOvn57+9ZK+NvvMuK0ctaYP7sS21\nDrhJNuSXCNhzlkj3p1XfcyogFAf9HVUcqSZ+RpEx0Phq2GkwALljdnL7RGw/yAOb\nmyIph/o6NexndGwKDrlSq7QpalT0PprhU33vMnGzp5NkXzD1M3t/GFsCbMKg3UYX\nekXpv7JTsDPiDYATUMmLivcPTO2jwAoCmfk69+6E25Extnlr5LNkTMiAYwrFfnos\nVRv6eWn3AgMBAAECggEABhVZPz65lNswrmWZiXuODMYckg2GtDoWt9GSsheDZiO5\ne4KkwyFfG0s8wSRNnTQIyuZU5gLKMyzxkWOXA/2kLHANJRr8yWUBCzxtDlFTAxK/\nS//UMXQ7BGToCXvycmKPdoblukNnyWET999rL0vtXdbWIAWYhihHMzT7+sNUgvPg\nYiSNo3duRL98DEBShNAOwKzNH7HzIi7IHsSbeDBsSU8mDH31qjM2H5I3k1g56pzB\nmHz8ik73I15T91KtoMgXSZH6OsrpvbtOVqpmejnsJ/FQNqL+HznP+SSpYCLAuWAo\nAZEm/E0zEgcPnaV1e+UmOevodGUnkcgdNv9NrcAVhQKBgQDUW5pPtyTLVNBcbHqu\nZ7J1Q6HRVpDh6jRkg/MhdRMl5uOMFqYJwO8sp99ZzEHglzho47lsnEid+KInto72\neIhzuoacQ7sAabFc4WudywK9s++2F+72iWBKb/HxZaOeesMM+OyQ8cm7/C+kwmPw\n9qsaD18sAR8DFdU80wse3WBgOwKBgQDEnSTapo4jd/f9rWABWlYqfqdBFl9cCDGe\nna4oGlAFasl2m3liHKDMakCHpqSu6+c6L5lvs9XvV8xCFl23iF/UpS0tg/sq0g4B\nMjW0QUFke/3YA+flaXtJ3B7OY6OrMyi5NH5GkbxFJrALkZyqJGpwvlHYk9Uus++C\nqj1Mb+hddQKBgGEawiVRifGwhta8hBzcLi6RDp27B+VGQ07zR2o1LtxWCBc3BBXR\ns4yn9uoJDNa2T4UnHNMdY9dYqk2enSD3XO4OjR9HmWtG6WOfcKZm/ongjeymZQ83\nImDnb6sC3x7I5Ag6i3J8HdNoLiEZArpdEUCJZuuoV5YBldCKcLtcX4WhAoGAZSuj\neit4OoISBuP+4dNVQVqYv+I+QYIp3j+vDQ21HYR8lF6eUEEA8Q6/k83JMgVLn2I8\n5wC31gfsoBkYMkenYCl6nNAsHzWlZTIr9kwZ1RYEYfJokmD7wt7Ur0kQQBj8HIkJ\nbVCyezbUIa/U2KwSZV9ZiENR0E1gsnDdSAbRn70CgYEA05ZO3fonovLyDnXUBn2l\njaPq9iu0vIe/5pR6iaVAcV9FWKRu267JrsXQjWyIRBTOTqvgTrSaGAFlaehVLXRX\nbV6Tazsv9gM3s0cw+2kml6mD4TLunXPh2zdbeFx+0qYUN7zoHwddqbo+kgQ/qGAe\n1aBdqLYWrNpNul5nAL1sXoc=\n-----END PRIVATE KEY-----\n",
  "client_email": "store-invoice@storeinvoice-386817.iam.gserviceaccount.com",
  "client_id": "116750979206749592945",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/store-invoice%40storeinvoice-386817.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}

''';
List allLabel = [];

const first20Row = [
  '체다슈레드',
  '반달감자',
  '알도우250',
  '고구마샐러드',
  '피자치즈',
  '스위트콘 대',
  '올리브슬라이스 대',
  '할라피뇨',
  '버팔로윙',
  '치킨텐더',
  '고르곤액상',
  '아몬드슬라이스',
  '건조파슬리',
  '풀드포크',
  '옥수수분말',
  '홍피망',
  '비프 스파게티소스',
  '오레가노홀',
  '마요네즈',
  '크림치즈무스',
];

const second20Row = [
  '핫바베큐치킨',
  '파마산',
  '먹물도우250',
  '칵테일새우 대',
  '칵테일새우 소',
  '와사비',
  '어니언 드레싱',
  '갈릭디핑 일회용',
  '핫소스 일회용',
  '불닭 까르보나라',
  '크림스파게티소스',
  '알도우320',
  '칠리소스',
  '바베큐소스',
  '치킨너겟',
  '점보닭다리',
  '미트토핑',
  '튀긴마늘',
  '멤피스 바베큐소스',
  '일회용 피클',
];

const third20Row = [
  '머스타드 일회용',
  '씬도우11인치',
  '씬도우13인치',
  '케이젼스파이스',
  '박스M',
  '박스XL',
  '스파게티박스',
  '박스L',
  '사이드박스',
  '봉투소',
  '봉투대',
  '단짠단짠소스',
  '새우링',
  '화이트슈',
  '불고기',
  '크림 치즈볼',
  '캡사이신',
  '삼발이',
];

const lastRow = [
  'Editor',
  'Editor',
  '솔로박스',
  '페스츄리',
  '소보로가루',
  '체리',
  '딸기베이스',
  '버락스파게티',
  '고구마다이스',
  '베이컨',
  '플레넷딥핑소스',
  '양파후레이크',
  '사조페페로니',
  '스트링치즈',
  '7인치박스',
  '고구마무스',
  '돌파인청크',
  '사조카나디안',
  '스모크치킨',
];
