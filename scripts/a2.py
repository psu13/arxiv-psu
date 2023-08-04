#!python3

import arxiv
import sys
import os

the_id = sys.argv[1]

search = arxiv.Search(
  id_list = [the_id],
  sort_by = arxiv.SortCriterion.SubmittedDate
)

for result in search.results():
  for link in result.links:
    if link.title == 'doi':
      doi = link.href
  arxiv = result.entry_id

cmd = "d2a " + '"' + doi + '"' + " " + arxiv

os.system(cmd)
