This was a classic latex resume based on Michael DeCorte's resume document style.  It is now updated to use formatting from Benoît Seignovert (https://github.com/seignovert/cv)
which in turn is based on the the Awesome CV LaTeX Template from Claud D. Park: https://github.com/posquit0/Awesome-CV

I have made some significant changes to the formatting inherited from awesome-cv, and I am in the process of regularizing the formatting into a more Latex way of being.


You can generate the PDF from the LaTeX file by running `make`.
  * Adjust the boolean `includeFullJobHistory` if you wish to include the full job history.
  * You have to run make twice, without deleting the `.aux` files, in order for the correct page numbering to show up

See the [releases section in GitHub](https://github.com/elizabrock/LaTeX-Resume/releases) for the downloadable PDF version of my resume.

## TODOs

* Add skills tagging to the experience entries
  * Consider the way that @seignovert or others organized their skills
  * Make updates to the skills section as we tag the skills on the next leg-
    * As we list the skill in the experience section, lay it out in the skills section and see what the natural grouping turns out to be.
* Add in a selected projects section! iGoDigital, GitLab, This Resume, typesetting The Rails 3 Way etc.
* Find a better way to list the subentries in the Education section
* Add links to the experience section where relevant
* Seriously consider removing IEEE CSDA from the list, despite its comical nature
* Figure out the extra bit of whitespace above the "Public Speaking" section
* Take another pass at the skill section- Add additional from LinkedIn, alphabetize, etc.
* Maybe also, all the modern CMS systems, etc to the skills? Even though it isn't strictly engineering?
* Either update or remove the Activities section entirely
* Evaluate reordering the resume sections
* Try a more flamboyant color for what is currently green.  E.g. purple or hot pink!
* Finally, release a new version
