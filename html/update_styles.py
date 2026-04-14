import re
import os

filepath = 'sar_adc_interactive.html'
with open(filepath, 'r', encoding='utf-8') as f:
    html = f.read()

# 1. Remove scroll-snap completely to allow free scrolling
html = html.replace('scroll-snap-type: y mandatory;', '')
html = html.replace('scroll-snap-align: start;', '')

# 2. Main Body Font change from Space Mono to Inter (display) and increase base size
html = html.replace('font-family: var(--mono);', 'font-family: var(--display);')
html = html.replace('font-size: 14px;', 'font-size: 16px;')

# 3. Increase arbitrary inline/css sizes
def increase_px(match):
    size = int(match.group(1))
    if 8 <= size <= 15:
        size += 3
    elif 15 < size <= 40:
        size += 4
    return f'font-size: {size}px;'

# Replace font-size:12px; or font-size: 12px;
html = re.sub(r'font-size:\s*(\d+)px;', increase_px, html)

# Replace inline css without semicolon font-size: 12px
def increase_px_no_semi(match):
    size = int(match.group(1))
    if 8 <= size <= 15:
        size += 3
    elif 15 < size <= 40:
        size += 4
    return f'font-size:{size}px'
html = re.sub(r'font-size:\s*(\d+)px(?!;)', increase_px_no_semi, html)

# Increase font size attributes inside tags (like font-size="9" in SVG)
def increase_attr(match):
    size = int(match.group(1))
    if 7 <= size <= 15:
        size += 2
    return f'font-size="{size}"'

html = re.sub(r'font-size="(\d+)"', increase_attr, html)

# Also fix the context font sizes for JS canvas renders:
def increase_ctx_font(match):
    size = int(match.group(1))
    if 7 <= size <= 15:
        size += 2
    return f'\'{size}px JetBrains'

html = re.sub(r'\'(\d+)px JetBrains', increase_ctx_font, html)

with open(filepath, 'w', encoding='utf-8') as f:
    f.write(html)
