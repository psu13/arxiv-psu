#!python3

import arxiv
import sys
import os

the_id = sys.argv[1]

search = arxiv.Search(
  id_list = [the_id],
  sort_by = arxiv.SortCriterion.SubmittedDate
)

doi = "nope"

for result in search.results():
  for link in result.links:
    if link.title == 'doi':
      doi = link.href
  arxiv = result.entry_id

if doi == "nope":
  for result in search.results():
    print("@article{arxiv_article,")
    names = map((lambda author:author.name), result.authors)
    print("\t author = {"+' and '.join(names)+"},")
    print("\t title = {{"+result.title+"}},")
    print("\t journal = {arXiv preprint},")
    print("\t year = {", result.published.year , "},")
    link = result.links[0]
    print("\t note = {\\href{" + link.href + "}{arxiv:" + the_id + "}}")
    print("}")
else:
  cmd = "d2a " + '"' + doi + '"' + " " + arxiv
  os.system(cmd)
