echo on

SET OUTPUT_NAME=output.docx

pushd %0\..
cd %0\..
cd documents

find . -name '*.md' | xargs cat | pandoc -f markdown -o ..\%OUTPUT_NAME% --toc -N
