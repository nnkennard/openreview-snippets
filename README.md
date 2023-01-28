# OpenReview snippets

**NOTE** I have updated the README but the notebooks have not been cleaned. I will get to it soon!

Just some possibly useful OpenReview API snippets. These cover some functions for operating on peer review discussions, some for handling pdfs of manuscripts on OpenReview, and others.

Feel free to start an issue if there is some functionality you would like a snippet for, and I can try to get it to work! (No guarantees, though)

## Exploring discussion structures

Discussions take the form of a tree of `Note` objects that each belong to a *forum*. Each submission corresponds to a single forum.

[`print-discussion-structures`](https://github.com/nnkennard/openreview-snippets/blob/main/notebooks/print-discussion-structures.ipynb) contains code to print a bare-bones representation of the discussion structure of a forum in a tree-looking format.

[`detailed-discussion-structures`]() contains code to extract more complex features from the discussion structure, including things like:
* depth of conversation threads
* number of tokens written by authors/reviewers/others

[`retrieve-review-rebuttal-threads`]()


[`get-paper-timeline`]()

## Managing manuscript files

OpenReview allows download of certain versions fo each submission through its API. 

[`download-all-revisions`]() contains code to download the pdfs of all available revisions of an OpenReview submission.

[`extracting-pdf-text`]() contains a minimal code snippet to extract pdf text using two methods:
* **Grobid**: ideal for academic text, does a great job of attending to figures and table etc. Importantly, extracts references and locates the mentions of each reference in the main text. Results in some errors with ICLR papers for some reason.
* **pdfdiff**: fewer errors when just extracting the main paper text for ICLR papers, but doesn't do fancy metadata.

## Some random stuff

[`get_all_invitations`](): requesting information from the OpenReview API requires the user to supply an invitation for the venue whose data is being requested. This is a quick reference to get the invitation strings for difference venues.

[`get_author_profiles`](): shows how to get any personal/demographic information provided by authors of any OpenReview submission through their OpenReview profile.

[`examine_submission_times`](): plots the submission times of all available revisions for a conference, showing the conference timeline.
