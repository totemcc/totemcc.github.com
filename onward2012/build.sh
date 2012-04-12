pandoc -s -S --template=sigplanconf-template.tex onward.md -o onward.pdf
pandoc -s -S -c onward.css onward.md -o onward.html