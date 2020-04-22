const numericChars = '0123456789';
const alphaChars = 'abcdefghijklmnopqrstuvwxyz';
const vowelChars = 'aeiou';
const alphaUppercaseChars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
const hexChars = '${numericChars}abcdef';
const alphaNumericChars = '$numericChars$alphaChars';
const alphaUppercaseNumericChars = '$numericChars$alphaUppercaseChars';
const bitcoinAddressChars =
    '123456789abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ';

const ibanPattern10 = [
  '01',
  '02',
  '03',
  '04',
  '05',
  '06',
  '07',
  '08',
  '09',
];

const ibanPattern100 = [
  '001',
  '002',
  '003',
  '004',
  '005',
  '006',
  '007',
  '008',
  '009',
];

class Iban {
  final int total;
  final String format;
  final List<Bban> bban;

  const Iban(this.total, this.format, this.bban);
}

class Bban {
  final String type;
  final int count;

  const Bban(this.type, this.count);
}

/*
let code = ''

code += '{'

for(const a of iban) {
  code += `'${a.country}': Iban(${a.total}, '${a.format}', [`
  for(const b of a.bban) code += `Bban('${b.type}', ${b.count}),`
  code += `],),\n`
}

code += '}'

console.log(code)
*/

const ibanFormats = {
  'AL': Iban(
    28,
    'ALkk bbbs sssx cccc cccc cccc cccc',
    [
      Bban('n', 8),
      Bban('c', 16),
    ],
  ),
  'AD': Iban(
    24,
    'ADkk bbbb ssss cccc cccc cccc',
    [
      Bban('n', 8),
      Bban('c', 12),
    ],
  ),
  'AT': Iban(
    20,
    'ATkk bbbb bccc cccc cccc',
    [
      Bban('n', 5),
      Bban('n', 11),
    ],
  ),
  'AZ': Iban(
    28,
    'AZkk bbbb cccc cccc cccc cccc cccc',
    [
      Bban('c', 4),
      Bban('n', 20),
    ],
  ),
  'BH': Iban(
    22,
    'BHkk bbbb cccc cccc cccc cc',
    [
      Bban('a', 4),
      Bban('c', 14),
    ],
  ),
  'BE': Iban(
    16,
    'BEkk bbbc cccc ccxx',
    [
      Bban('n', 3),
      Bban('n', 9),
    ],
  ),
  'BA': Iban(
    20,
    'BAkk bbbs sscc cccc ccxx',
    [
      Bban('n', 6),
      Bban('n', 10),
    ],
  ),
  'BR': Iban(
    29,
    'BRkk bbbb bbbb ssss sccc cccc ccct n',
    [
      Bban('n', 13),
      Bban('n', 10),
      Bban('a', 1),
      Bban('c', 1),
    ],
  ),
  'BG': Iban(
    22,
    'BGkk bbbb ssss ddcc cccc cc',
    [
      Bban('a', 4),
      Bban('n', 6),
      Bban('c', 8),
    ],
  ),
  'CR': Iban(
    21,
    'CRkk bbbc cccc cccc cccc c',
    [
      Bban('n', 3),
      Bban('n', 14),
    ],
  ),
  'HR': Iban(
    21,
    'HRkk bbbb bbbc cccc cccc c',
    [
      Bban('n', 7),
      Bban('n', 10),
    ],
  ),
  'CY': Iban(
    28,
    'CYkk bbbs ssss cccc cccc cccc cccc',
    [
      Bban('n', 8),
      Bban('c', 16),
    ],
  ),
  'CZ': Iban(
    24,
    'CZkk bbbb ssss sscc cccc cccc',
    [
      Bban('n', 10),
      Bban('n', 10),
    ],
  ),
  'DK': Iban(
    18,
    'DKkk bbbb cccc cccc cc',
    [
      Bban('n', 4),
      Bban('n', 10),
    ],
  ),
  'DO': Iban(
    28,
    'DOkk bbbb cccc cccc cccc cccc cccc',
    [
      Bban('a', 4),
      Bban('n', 20),
    ],
  ),
  'TL': Iban(
    23,
    'TLkk bbbc cccc cccc cccc cxx',
    [
      Bban('n', 3),
      Bban('n', 16),
    ],
  ),
  'EE': Iban(
    20,
    'EEkk bbss cccc cccc cccx',
    [
      Bban('n', 4),
      Bban('n', 12),
    ],
  ),
  'FO': Iban(
    18,
    'FOkk bbbb cccc cccc cx',
    [
      Bban('n', 4),
      Bban('n', 10),
    ],
  ),
  'FI': Iban(
    18,
    'FIkk bbbb bbcc cccc cx',
    [
      Bban('n', 6),
      Bban('n', 8),
    ],
  ),
  'FR': Iban(
    27,
    'FRkk bbbb bggg ggcc cccc cccc cxx',
    [
      Bban('n', 10),
      Bban('c', 11),
      Bban('n', 2),
    ],
  ),
  'GE': Iban(
    22,
    'GEkk bbcc cccc cccc cccc cc',
    [
      Bban('c', 2),
      Bban('n', 16),
    ],
  ),
  'DE': Iban(
    22,
    'DEkk bbbb bbbb cccc cccc cc',
    [
      Bban('n', 8),
      Bban('n', 10),
    ],
  ),
  'GI': Iban(
    23,
    'GIkk bbbb cccc cccc cccc ccc',
    [
      Bban('a', 4),
      Bban('c', 15),
    ],
  ),
  'GR': Iban(
    27,
    'GRkk bbbs sssc cccc cccc cccc ccc',
    [
      Bban('n', 7),
      Bban('c', 16),
    ],
  ),
  'GL': Iban(
    18,
    'GLkk bbbb cccc cccc cc',
    [
      Bban('n', 4),
      Bban('n', 10),
    ],
  ),
  'GT': Iban(
    28,
    'GTkk bbbb mmtt cccc cccc cccc cccc',
    [
      Bban('c', 4),
      Bban('c', 4),
      Bban('c', 16),
    ],
  ),
  'HU': Iban(
    28,
    'HUkk bbbs sssk cccc cccc cccc cccx',
    [
      Bban('n', 8),
      Bban('n', 16),
    ],
  ),
  'IS': Iban(
    26,
    'ISkk bbbb sscc cccc iiii iiii ii',
    [
      Bban('n', 6),
      Bban('n', 16),
    ],
  ),
  'IE': Iban(
    22,
    'IEkk aaaa bbbb bbcc cccc cc',
    [
      Bban('c', 4),
      Bban('n', 6),
      Bban('n', 8),
    ],
  ),
  'IL': Iban(
    23,
    'ILkk bbbn nncc cccc cccc ccc',
    [
      Bban('n', 6),
      Bban('n', 13),
    ],
  ),
  'IT': Iban(
    27,
    'ITkk xaaa aabb bbbc cccc cccc ccc',
    [
      Bban('a', 1),
      Bban('n', 10),
      Bban('c', 12),
    ],
  ),
  'JO': Iban(
    30,
    'JOkk bbbb nnnn cccc cccc cccc cccc cc',
    [
      Bban('a', 4),
      Bban('n', 4),
      Bban('n', 18),
    ],
  ),
  'KZ': Iban(
    20,
    'KZkk bbbc cccc cccc cccc',
    [
      Bban('n', 3),
      Bban('c', 13),
    ],
  ),
  'XK': Iban(
    20,
    'XKkk bbbb cccc cccc cccc',
    [
      Bban('n', 4),
      Bban('n', 12),
    ],
  ),
  'KW': Iban(
    30,
    'KWkk bbbb cccc cccc cccc cccc cccc cc',
    [
      Bban('a', 4),
      Bban('c', 22),
    ],
  ),
  'LV': Iban(
    21,
    'LVkk bbbb cccc cccc cccc c',
    [
      Bban('a', 4),
      Bban('c', 13),
    ],
  ),
  'LB': Iban(
    28,
    'LBkk bbbb cccc cccc cccc cccc cccc',
    [
      Bban('n', 4),
      Bban('c', 20),
    ],
  ),
  'LI': Iban(
    21,
    'LIkk bbbb bccc cccc cccc c',
    [
      Bban('n', 5),
      Bban('c', 12),
    ],
  ),
  'LT': Iban(
    20,
    'LTkk bbbb bccc cccc cccc',
    [
      Bban('n', 5),
      Bban('n', 11),
    ],
  ),
  'LU': Iban(
    20,
    'LUkk bbbc cccc cccc cccc',
    [
      Bban('n', 3),
      Bban('c', 13),
    ],
  ),
  'MK': Iban(
    19,
    'MKkk bbbc cccc cccc cxx',
    [
      Bban('n', 3),
      Bban('c', 10),
      Bban('n', 2),
    ],
  ),
  'MT': Iban(
    31,
    'MTkk bbbb ssss sccc cccc cccc cccc ccc',
    [
      Bban('a', 4),
      Bban('n', 5),
      Bban('c', 18),
    ],
  ),
  'MR': Iban(
    27,
    'MRkk bbbb bsss sscc cccc cccc cxx',
    [
      Bban('n', 10),
      Bban('n', 13),
    ],
  ),
  'MU': Iban(
    30,
    'MUkk bbbb bbss cccc cccc cccc 000d dd',
    [
      Bban('a', 4),
      Bban('n', 4),
      Bban('n', 15),
      Bban('a', 3),
    ],
  ),
  'MC': Iban(
    27,
    'MCkk bbbb bsss sscc cccc cccc cxx',
    [
      Bban('n', 10),
      Bban('c', 11),
      Bban('n', 2),
    ],
  ),
  'MD': Iban(
    24,
    'MDkk bbcc cccc cccc cccc cccc',
    [
      Bban('c', 2),
      Bban('c', 18),
    ],
  ),
  'ME': Iban(
    22,
    'MEkk bbbc cccc cccc cccc xx',
    [
      Bban('n', 3),
      Bban('n', 15),
    ],
  ),
  'NL': Iban(
    18,
    'NLkk bbbb cccc cccc cc',
    [
      Bban('a', 4),
      Bban('n', 10),
    ],
  ),
  'NO': Iban(
    15,
    'NOkk bbbb cccc ccx',
    [
      Bban('n', 4),
      Bban('n', 7),
    ],
  ),
  'PK': Iban(
    24,
    'PKkk bbbb cccc cccc cccc cccc',
    [
      Bban('c', 4),
      Bban('n', 16),
    ],
  ),
  'PS': Iban(
    29,
    'PSkk bbbb xxxx xxxx xccc cccc cccc c',
    [
      Bban('c', 4),
      Bban('n', 9),
      Bban('n', 12),
    ],
  ),
  'PL': Iban(
    28,
    'PLkk bbbs sssx cccc cccc cccc cccc',
    [
      Bban('n', 8),
      Bban('n', 16),
    ],
  ),
  'PT': Iban(
    25,
    'PTkk bbbb ssss cccc cccc cccx x',
    [
      Bban('n', 8),
      Bban('n', 13),
    ],
  ),
  'QA': Iban(
    29,
    'QAkk bbbb cccc cccc cccc cccc cccc c',
    [
      Bban('a', 4),
      Bban('c', 21),
    ],
  ),
  'RO': Iban(
    24,
    'ROkk bbbb cccc cccc cccc cccc',
    [
      Bban('a', 4),
      Bban('c', 16),
    ],
  ),
  'SM': Iban(
    27,
    'SMkk xaaa aabb bbbc cccc cccc ccc',
    [
      Bban('a', 1),
      Bban('n', 10),
      Bban('c', 12),
    ],
  ),
  'SA': Iban(
    24,
    'SAkk bbcc cccc cccc cccc cccc',
    [
      Bban('n', 2),
      Bban('c', 18),
    ],
  ),
  'RS': Iban(
    22,
    'RSkk bbbc cccc cccc cccc xx',
    [
      Bban('n', 3),
      Bban('n', 15),
    ],
  ),
  'SK': Iban(
    24,
    'SKkk bbbb ssss sscc cccc cccc',
    [
      Bban('n', 10),
      Bban('n', 10),
    ],
  ),
  'SI': Iban(
    19,
    'SIkk bbss sccc cccc cxx',
    [
      Bban('n', 5),
      Bban('n', 10),
    ],
  ),
  'ES': Iban(
    24,
    'ESkk bbbb gggg xxcc cccc cccc',
    [
      Bban('n', 10),
      Bban('n', 10),
    ],
  ),
  'SE': Iban(
    24,
    'SEkk bbbc cccc cccc cccc cccc',
    [
      Bban('n', 3),
      Bban('n', 17),
    ],
  ),
  'CH': Iban(
    21,
    'CHkk bbbb bccc cccc cccc c',
    [
      Bban('n', 5),
      Bban('c', 12),
    ],
  ),
  'TN': Iban(
    24,
    'TNkk bbss sccc cccc cccc cccc',
    [
      Bban('n', 5),
      Bban('n', 15),
    ],
  ),
  'TR': Iban(
    26,
    'TRkk bbbb bxcc cccc cccc cccc cc',
    [
      Bban('n', 5),
      Bban('c', 1),
      Bban('c', 16),
    ],
  ),
  'AE': Iban(
    23,
    'AEkk bbbc cccc cccc cccc ccc',
    [
      Bban('n', 3),
      Bban('n', 16),
    ],
  ),
  'GB': Iban(
    22,
    'GBkk bbbb ssss sscc cccc cc',
    [
      Bban('a', 4),
      Bban('n', 6),
      Bban('n', 8),
    ],
  ),
  'VG': Iban(
    24,
    'VGkk bbbb cccc cccc cccc cccc',
    [
      Bban('c', 4),
      Bban('n', 16),
    ],
  ),
};

const iso3166 = [
  'AC',
  'AD',
  'AE',
  'AF',
  'AG',
  'AI',
  'AL',
  'AM',
  'AN',
  'AO',
  'AQ',
  'AR',
  'AS',
  'AT',
  'AU',
  'AW',
  'AX',
  'AZ',
  'BA',
  'BB',
  'BD',
  'BE',
  'BF',
  'BG',
  'BH',
  'BI',
  'BJ',
  'BL',
  'BM',
  'BN',
  'BO',
  'BQ',
  'BR',
  'BS',
  'BT',
  'BU',
  'BV',
  'BW',
  'BY',
  'BZ',
  'CA',
  'CC',
  'CD',
  'CE',
  'CF',
  'CG',
  'CH',
  'CI',
  'CK',
  'CL',
  'CM',
  'CN',
  'CO',
  'CP',
  'CR',
  'CS',
  'CS',
  'CU',
  'CV',
  'CW',
  'CX',
  'CY',
  'CZ',
  'DD',
  'DE',
  'DG',
  'DJ',
  'DK',
  'DM',
  'DO',
  'DZ',
  'EA',
  'EC',
  'EE',
  'EG',
  'EH',
  'ER',
  'ES',
  'ET',
  'EU',
  'FI',
  'FJ',
  'FK',
  'FM',
  'FO',
  'FR',
  'FX',
  'GA',
  'GB',
  'GD',
  'GE',
  'GF',
  'GG',
  'GH',
  'GI',
  'GL',
  'GM',
  'GN',
  'GP',
  'GQ',
  'GR',
  'GS',
  'GT',
  'GU',
  'GW',
  'GY',
  'HK',
  'HM',
  'HN',
  'HR',
  'HT',
  'HU',
  'IC',
  'ID',
  'IE',
  'IL',
  'IM',
  'IN',
  'IO',
  'IQ',
  'IR',
  'IS',
  'IT',
  'JE',
  'JM',
  'JO',
  'JP',
  'KE',
  'KG',
  'KH',
  'KI',
  'KM',
  'KN',
  'KP',
  'KR',
  'KW',
  'KY',
  'KZ',
  'LA',
  'LB',
  'LC',
  'LI',
  'LK',
  'LR',
  'LS',
  'LT',
  'LU',
  'LV',
  'LY',
  'MA',
  'MC',
  'MD',
  'ME',
  'MF',
  'MG',
  'MH',
  'MK',
  'ML',
  'MM',
  'MN',
  'MO',
  'MP',
  'MQ',
  'MR',
  'MS',
  'MT',
  'MU',
  'MV',
  'MW',
  'MX',
  'MY',
  'MZ',
  'NA',
  'NC',
  'NE',
  'NF',
  'NG',
  'NI',
  'NL',
  'NO',
  'NP',
  'NR',
  'NT',
  'NU',
  'NZ',
  'OM',
  'PA',
  'PE',
  'PF',
  'PG',
  'PH',
  'PK',
  'PL',
  'PM',
  'PN',
  'PR',
  'PS',
  'PT',
  'PW',
  'PY',
  'QA',
  'RE',
  'RO',
  'RS',
  'RU',
  'RW',
  'SA',
  'SB',
  'SC',
  'SD',
  'SE',
  'SG',
  'SH',
  'SI',
  'SJ',
  'SK',
  'SL',
  'SM',
  'SN',
  'SO',
  'SR',
  'SS',
  'ST',
  'SU',
  'SV',
  'SX',
  'SY',
  'SZ',
  'TA',
  'TC',
  'TD',
  'TF',
  'TG',
  'TH',
  'TJ',
  'TK',
  'TL',
  'TM',
  'TN',
  'TO',
  'TR',
  'TT',
  'TV',
  'TW',
  'TZ',
  'UA',
  'UG',
  'UM',
  'US',
  'UY',
  'UZ',
  'VA',
  'VC',
  'VE',
  'VG',
  'VI',
  'VN',
  'VU',
  'WF',
  'WS',
  'YE',
  'YT',
  'YU',
  'ZA',
  'ZM',
  'ZR',
  'ZW',
];
