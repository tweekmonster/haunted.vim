# coding: utf8
"""Generates glyphs as a VimL dict."""
import os

from PIL import Image, ImageFont, ImageDraw

base = os.path.dirname(__file__)

# Using "tinyunicode.tff" from: http://www.dafont.com/tinyunicode.font
# Note: It's not a true unicode font.

# At 16pt, glyph metrics are:
#    advance: ∞
#   x-height: 5 lines
#     ascent: 1 line
#    descent: 2 lines

font = ImageFont.truetype(os.path.join(base, 'tinyunicode.ttf'), 16)

glyphs = ('ABCDEFGHIJKLMNOPQRSTUVWXYZ'
          'abcdefghijklmnopqrstuvwxyz'
          '`0123456789-='
          '~!@#$%^&*()_+'
          '[{]}\\|'
          ';:\'"'
          ',<.>/? '
          'þ←↑→↓Ð¼½')

# Height is already known, but calculate y min/max for sanity.
ymin = 255
ymax = 0

font_grid = {}


def render(c):
    global ymin, ymax
    img = Image.new('P', (15, 15), 255)
    d = ImageDraw.Draw(img)
    d.text((0, 0), c, font=font)
    rows = []
    pixels = img.load()
    w = 0
    for y in range(15):
        rows.append([0] * 15)
        for x in range(15):
            if pixels[x, y] == 0:
                rows[y][x] = 1
                w = max(x, w)
                ymin = min(y, ymin)
                ymax = max(y, ymax)

    return [r[:w+2] for r in rows]

for c in glyphs:
    font_grid[ord(c)] = render(c)

print('let s:codes = {')
for c, rows in font_grid.items():
    rows = rows[ymin:ymax+1]
    font_grid[c] = rows
    print("\    '%d': [" % c)
    for r in rows:
        print('\      \'%s\',' % ''.join(map(lambda x: '█' if x else ' ', r)))
    print('\    ],')
print('\  }')
